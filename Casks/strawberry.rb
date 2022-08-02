cask "strawberry" do
  version "1.0.7"
  sha256 "0b8d1bbf41747d7d7a26bcee9bb5a5b9d098b2e6be43e7833fdecb541fb74780"

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
