cask "brave-browser" do
  version "85.1.14.84,114.84"
  sha256 "c4fb81de14c485217d8c3043a8679a56917024de0359b297bb1cbdaa538a391b"

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
