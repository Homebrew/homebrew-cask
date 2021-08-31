cask "brave-browser" do
  version "1.29.76.0,129.76"

  if Hardware::CPU.intel?
    sha256 "8d573a37496cc42c6e6417657a5299ae3587c093e29fe8322f51de52c73b9b2d"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "9abcad4dfdc0cfc1861bb547287e9150f9681f13bde8028c4209eb97fd00bb9f"

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
