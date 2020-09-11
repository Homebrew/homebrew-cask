cask "brave-browser" do
  version "85.1.13.86,113.86"
  sha256 "c60fe25cc5de4df5b29253b3b60d0f067a8cda1a7eda6ae1dc79c891844a819a"

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
