cask "brave-browser" do
  version "85.1.13.82,113.82"
  sha256 "8d519c5be7d0e5a4ae0fc355d6612d054b87746c5d74b6da03403ce9e912343f"

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser/ was verified as official when first introduced to the cask
  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser.dmg"
  appcast "https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml"
  name "Brave"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/"

  auto_updates true

  app "Brave Browser.app"

  zap trash: [
    "~/Library/Application Support/BraveSoftware/Brave-Browser",
    "~/Library/Preferences/com.brave.Browser.plist",
    "~/Library/Saved Application State/com.brave.Browser.savedState",
  ]
end
