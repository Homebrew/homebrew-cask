cask "brave-browser" do
  version "84.1.11.101,111.101"
  sha256 "31d000490135f27e647bd469a87a32516a2a15be298072ef05a6bba9ca9999a2"

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser/ was verified as official when first introduced to the cask
  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser.dmg"
  appcast "https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml"
  name "Brave"
  homepage "https://brave.com/"

  auto_updates true

  app "Brave Browser.app"

  zap trash: [
    "~/Library/Application Support/BraveSoftware/Brave-Browser",
    "~/Library/Preferences/com.brave.Browser.plist",
    "~/Library/Saved Application State/com.brave.Browser.savedState",
  ]
end
