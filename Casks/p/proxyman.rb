cask "proxyman" do
  version "4.11.0,49200"
  sha256 "51d4a0ef5b7819e347c4df1e4e3a3cfd10c0270813e851ed44ce97eac0c3067a"

  url "https://download.proxyman.io/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"
  name "Proxyman"
  desc "HTTP debugging proxy"
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
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.proxyman.NSProxy",
    "~/Library/Caches/com.proxyman.NSProxy",
    "~/Library/Caches/Proxyman",
    "~/Library/Cookies/com.proxyman.binarycookies",
    "~/Library/Cookies/com.proxyman.NSProxy.binarycookies",
    "~/Library/HTTPStorages/com.proxyman.NSProxy",
    "~/Library/Preferences/com.proxyman.NSProxy.plist",
    "~/Library/Preferences/com.proxyman.iconappmanager.userdefaults.plist",
    "~/Library/Preferences/com.proxyman.plist",
    "~/Library/Saved Application State/com.proxyman.NSProxy.savedState",
    "~/Library/WebKit/com.proxyman.NSProxy",
  ]
end
