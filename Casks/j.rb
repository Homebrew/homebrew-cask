cask "j" do
  version "901"
  sha256 "7a7d9dd2cad84cc40f397620b7cc86d0f26585311d75097eef55396d849dcd2a"

  url "https://www.jsoftware.com/download/j#{version}/install/j#{version}_mac64.zip"
  name "J"
  homepage "https://www.jsoftware.com/"

  apps = %w[jbrk jcon jhs jqt]
  apps.each do |a|
    app "j#{version}/#{a}.app"
  end

  installer script: "j#{version}/macos-fix.command"
  installer script: {
    executable: "j#{version}/bin/jconsole",
    args:       ["-js", "load 'pacman'", "'install' jpkg '*'", "exit 0"],
  }

  # target names according to readme.txt
  ["jcon", "jconsole"].each do |b|
    binary "j#{version}/bin/jconsole", target: b
  end
  commands = ["jbrk", "jhs", "jqt"]
  commands.each do |b|
    binary "j#{version}/bin/#{b}.command", target: b
  end

  postflight do
    # Use `readlink` to get full path of symlinked commands.
    commands.each do |c|
      command = "#{staged_path}/j#{version}/bin/#{c}.command"
      IO.write command, IO.read(command).gsub("$0", '$(/usr/bin/readlink "$0" || /bin/echo "$0")')
    end

    # Fix relative paths inside App bundles.
    apps.each do |a|
      apprun = "#{appdir}/#{a}.app/Contents/MacOS/apprun"
      IO.write apprun, IO.read(apprun).gsub(%r{`dirname "\$0"`.*?/bin}, "#{staged_path}/j#{version}/bin")
    end
  end

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten and that for this cask it is indeed this simple.
  uninstall delete: "#{staged_path}/#{token}"
end
