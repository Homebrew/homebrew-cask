cask "proxyman" do
  version "3.9.0,30900"
  sha256 "59e9b5ea3f8feef8b9e28daea9711e90030ca42cfb1664cd25a47c2fc0c1de19"

  url "https://download.proxyman.io/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"
  name "Proxyman"
  desc "Modern and intuitive HTTP Debugging Proxy app"
  homepage "https://proxyman.io/"

  livecheck do
    url "https://proxyman.io/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Proxyman.app"

  uninstall_postflight do
    stdout, * = system_command "/usr/bin/security",
                               args: ["find-certificate", "-a", "-c", "Proxyman", "-Z"],
                               sudo: true
    hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
    hashes.each do |h|
      system_command "/usr/bin/security",
                     args: ["delete-certificate", "-Z", h],
                     sudo: true
    end
  end

  uninstall quit:      "com.proxyman.NSProxy",
            launchctl: "com.proxyman.NSProxy.HelperTool",
            delete:    "/Library/PrivilegedHelperTools/com.proxyman.NSProxy.HelperTool"

  zap trash: [
    "~/.proxyman*",
    "~/Library/Application Support/com.proxyman",
    "~/Library/Application Support/com.proxyman.NSProxy",
    "~/Library/Caches/Proxyman",
    "~/Library/Caches/com.proxyman.NSProxy",
    "~/Library/Cookies/com.proxyman.binarycookies",
    "~/Library/Cookies/com.proxyman.NSProxy.binarycookies",
    "~/Library/Preferences/com.proxyman.plist",
    "~/Library/Preferences/com.proxyman.NSProxy.plist",
    "~/Library/Saved Application State/com.proxyman.NSProxy.savedState",
  ]
end
