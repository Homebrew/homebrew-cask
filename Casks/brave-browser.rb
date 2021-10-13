cask "brave-browser" do
  version "1.30.89.0,130.89"

  if Hardware::CPU.intel?
    sha256 "29cec4d7c71e7339c3a65d10c31e8f7f08408f135ba2729fd7c9fc52ee7578a5"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "699452bdc61f9feaa0c1b9de51ffed9022341601965156f76518331ca514ae33"

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
