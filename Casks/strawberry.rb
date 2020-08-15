cask "strawberry" do
  version "0.7.1"
  sha256 "419f75ebe724a40559ffb002eb6ade1023ae83db9988f55ae6421e4f8919ab9c"

  # github.com/strawberrymusicplayer/strawberry/ was verified as official when first introduced to the cask
  url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}.dmg"
  appcast "https://github.com/strawberrymusicplayer/strawberry/releases.atom"
  name "Strawberry"
  homepage "https://www.strawberrymusicplayer.org/"

  app "strawberry.app"

  zap trash: [
    "~/Library/Application Support/Strawberry",
    "~/Library/Caches/Strawberry",
    "~/Library/Preferences/org.strawberrymusicplayer.Strawberry.plist",
    "~/Library/Saved Application State/org.strawberrymusicplayer.strawberry.savedState",
  ]
end
