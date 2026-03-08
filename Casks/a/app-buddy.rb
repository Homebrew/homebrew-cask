cask "app-buddy" do
  version "1.3.0"
  sha256 "1dacbc9ed625e80c16db054cc98ac6023f3ad3ed302acbab46f7dda694310289"

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
  depends_on macos: ">= :tahoe"

  app "App Buddy.app"

  zap trash: [
    "~/Library/Application Support/App Buddy",
    "~/Library/Caches/com.sindresorhus.App-Buddy",
    "~/Library/Preferences/com.sindresorhus.App-Buddy.plist",
  ]
end
