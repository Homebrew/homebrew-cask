cask "app-buddy" do
  version "1.2.1"
  sha256 "0512265cde30dfb1057d1eb7db52738308435af6d8b8bed18abba72c04b22423"

  url "https://github.com/sindresorhus/app-buddy-meta/releases/download/v#{version}/App.Buddy.zip",
      verified: "github.com/sindresorhus/"
  name "App Buddy"
  desc "Helper for Sindre Sorhus's apps"
  homepage "https://sindresorhus.com/app-buddy"

  livecheck do
    url "https://sindresorhus.com/app-buddy-meta/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "App Buddy.app"

  zap trash: [
    "~/Library/Application Support/App Buddy",
    "~/Library/Caches/com.sindresorhus.App-Buddy",
    "~/Library/Preferences/com.sindresorhus.App-Buddy.plist",
  ]
end
