cask "strawberry" do
  version "1.0.3"
  sha256 "5bab3b8478e799adfa92cb8db5a4fb9dd3be0cb8c830d1470f01a8444c947156"

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
