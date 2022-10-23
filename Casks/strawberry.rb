cask "strawberry" do
  version "1.0.10"
  sha256 "e44a014be4218cb8fe71d82969ce47cf7ce822d0fbffa146b280b9d90b362f8e"

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
