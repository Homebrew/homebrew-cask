cask "brave-browser" do
  version "1.28.106.0,128.106"

  if Hardware::CPU.intel?
    sha256 "4f78facec344ca147839b2ab0e165302b7c95290f2ccfbcc177da00b773c5d55"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "fd48036722f8539ff4d5be375f9cd12b3381622614069d2ab1a44061c2106b16"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable-arm64/#{version.after_comma}/Brave-Browser-arm64.dmg",
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
