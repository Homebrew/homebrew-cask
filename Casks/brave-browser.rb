cask "brave-browser" do
  version "88.1.19.90,119.90"

  if Hardware::CPU.intel?
    sha256 "4a30485aeaaa0a35f014456cb3de1017e7149ef539ff81c73a2127d8c8d9b806"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "5c030fd835d14abeb043d5b862b1e34ad4275c50a9a99a1e1929d347d63765da"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable-arm64/#{version.after_comma}/Brave-Browser-universal.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/stable-arm64/appcast.xml"
      strategy :sparkle
    end
  end

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
