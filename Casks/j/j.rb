cask "j" do
  version "9.5.2"
  sha256 "78efb1db5423939e776f0053ff074a5c641b376e0517ded04773e38c001609c5"

  url "https://www.jsoftware.com/download/j#{version.major_minor}/install/j#{version}_mac64.zip"
  name "J"
  desc "Programming language for mathematical, statistical and logical analysis of data"
  homepage "https://www.jsoftware.com/"

  apps = %w[jbrk jcon jqt]
  apps.each do |a|
    app "j#{version.major_minor}/#{a}.app"
  end

  livecheck do
    url "https://code.jsoftware.com/wiki/System/Installation"
    regex(/Jv?(\d+(?:\.\d+)+)\s+release/i)
    strategy :page_match do |page, regex|
      # Identify partial release version (e.g., J1.2) on installation page
      release = page.scan(regex)
                    .flatten
                    .max_by { |v| Version.new(v) }
      next if release.blank?

      # Fetch the release install page (containing full versions like 1.2.3)
      install_page = Homebrew::Livecheck::Strategy.page_content("https://www.jsoftware.com/download/j#{release}/install/")
      install_page[:content]&.scan(/href=.*?j[._-]?v?(\d+(?:\.\d+)+)[._-]mac/i)
                            &.map { |match| match[0] }
    end
  end

  installer script: "j#{version.major_minor}/macos-fix.command"
  installer script: {
    executable: "j#{version.major_minor}/bin/jconsole",
    args:       ["-js", "load 'pacman'", "'install' jpkg '*'", "exit 0"],
  }

  ["jcon", "jconsole"].each do |b|
    binary "j#{version.major_minor}/bin/jconsole", target: b
  end
  commands = ["jbrk", "jhs", "jqt"]
  commands.each do |b|
    binary "j#{version.major_minor}/bin/#{b}.command", target: b
  end

  postflight do
    # Use `readlink` to get full path of symlinked commands.
    commands.each do |c|
      command = "#{staged_path}/j#{version.major_minor}/bin/#{c}.command"
      File.write command, File.read(command).gsub("$0", '$(/usr/bin/readlink "$0" || /bin/echo "$0")')
    end

    # Fix relative paths inside App bundles.
    apps.each do |a|
      apprun = "#{appdir}/#{a}.app/Contents/MacOS/apprun"
      File.write apprun, File.read(apprun).gsub(%r{`dirname "\$0"`.*?/bin}, "#{staged_path}/j#{version.major_minor}/bin")
    end
  end

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten and that for this cask it is indeed this simple.
  uninstall delete: "#{staged_path}/#{token}"

  zap trash: [
    "~/Library/Application Support/j",
    "~/Library/Caches/com.jsoftware.jqt",
    "~/Library/Caches/j",
    "~/Library/Preferences/com.jsoftware.jqt.plist",
    "~/Library/Preferences/jqt.ini",
    "~/Library/Saved Application State/com.jsoftware.jqt.savedState",
  ]
end
