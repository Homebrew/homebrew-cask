cask "strawberry" do
  version "1.0.4"
  sha256 "823c16a1ace29f6f095edf7e83a47d6c3ac6edd298b3ecaa7118188e03b56dc2"

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
