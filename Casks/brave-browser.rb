cask "brave-browser" do
  version "1.26.74.0,126.74"

  if Hardware::CPU.intel?
    sha256 "033f06bbe8eea9ccc21485c713ccc4173a1afcfc317c234d9dfd550f22d0a299"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "839e4ae7df1117ce969cfe624d39876f0941f57266536d49b49c1a9bc204c9b6"

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
