cask "j" do
  version "9.7.1"
  sha256 "fc34fe96fc19520c9f317ecb6b318aeb3bd83a4994b505dfa1216cf1775fd3e3"

  url "https://www.jsoftware.com/download/j#{version.major_minor}/install/j#{version}_mac.zip"
  name "J"
  desc "Programming language for mathematical, statistical and logical analysis of data"
  homepage "https://www.jsoftware.com/"

  # The installation page (https://code.jsoftware.com/wiki/System/Installation)
  # is behind Cloudflare and is inaccessible, so we check the main page. The
  # content is rendered client-side from a Markdown file, so we fetch that.
  livecheck do
    url "https://www.jsoftware.com/main.md"
    regex(/href=.*?j[._-]?v?(\d+(?:\.\d+)+)[._-]mac/i)
    strategy :page_match do |page, regex|
      # Identify partial release version (e.g., J1.2)
      release = page.match(/latest\s+release\s+is\s+J(\d+(?:\.\d+)+)/i)
      next unless release

      # Fetch the release install page (containing full versions like 1.2.3)
      install_page = Homebrew::Livecheck::Strategy.page_content("https://www.jsoftware.com/download/j#{release[1]}/install/")
      install_page[:content]&.scan(regex)
                            &.map { |match| match[0] }
    end
  end

  apps = %w[jbrk jcon jqt]
  apps.each do |a|
    app "j#{version.major_minor}/#{a}.app"
  end

  depends_on :macos

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

  postflight_steps do
    # Use `readlink` to get full path of symlinked commands.
    inreplace "j#{version.major_minor}/bin/jbrk.command", "$0", '$(/usr/bin/readlink "$0" || /bin/echo "$0")'
    inreplace "j#{version.major_minor}/bin/jhs.command", "$0", '$(/usr/bin/readlink "$0" || /bin/echo "$0")'
    inreplace "j#{version.major_minor}/bin/jqt.command", "$0", '$(/usr/bin/readlink "$0" || /bin/echo "$0")'

    # Fix relative paths inside App bundles.
    inreplace "jbrk.app/Contents/MacOS/apprun", %r{`dirname "\$0"`.*?/bin},
              "{{staged_path}}/j#{version.major_minor}/bin", base: :appdir
    inreplace "jcon.app/Contents/MacOS/apprun", %r{`dirname "\$0"`.*?/bin},
              "{{staged_path}}/j#{version.major_minor}/bin", base: :appdir
    inreplace "jqt.app/Contents/MacOS/apprun", %r{`dirname "\$0"`.*?/bin},
              "{{staged_path}}/j#{version.major_minor}/bin", base: :appdir
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
