cask "brave-browser" do
  version "87.1.17.73,117.73"
  sha256 "38d740e902762e2921a936e7b8f98ac4bb32c2196747e7d1a9088ec599fd6ff8"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
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
