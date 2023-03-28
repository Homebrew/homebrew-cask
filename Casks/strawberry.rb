cask "strawberry" do
  version "1.0.16"
  sha256 "bd6f1b82fab14da44fecf7e22a90a21db48ed134a7a41d193f3c2954ea36f190"

  url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-x86_64.dmg",
      verified: "github.com/strawberrymusicplayer/strawberry/"
  name "Strawberry"
  desc "Music player and music collection organizer"
  homepage "https://www.strawberrymusicplayer.org/"

  depends_on macos: ">= :catalina"

  app "strawberry.app"

  zap trash: [
    "~/Library/Application Support/Strawberry",
    "~/Library/Caches/Strawberry",
    "~/Library/Preferences/org.strawberrymusicplayer.Strawberry.plist",
    "~/Library/Saved Application State/org.strawberrymusicplayer.strawberry.savedState",
  ]
end
