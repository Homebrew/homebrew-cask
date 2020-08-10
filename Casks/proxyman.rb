cask "proxyman" do
  version "2.4.0"
  sha256 "2602bb934f2915bf371b04fe06f819867dc68d52ec2e49f71e7a3911c269b693"

  # github.com/ProxymanApp/Proxyman/ was verified as official when first introduced to the cask
  url "https://github.com/ProxymanApp/Proxyman/releases/download/#{version}/Proxyman_#{version}.dmg"
  appcast "https://github.com/ProxymanApp/Proxyman/releases.atom"
  name "Proxyman"
  homepage "https://proxyman.io/"

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
