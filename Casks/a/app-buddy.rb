cask "app-buddy" do
  version "1.2.0"
  sha256 "49b182822be95730c18eee211af91ff950637ebacd507c7cca2872f1c2819dd9"

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
