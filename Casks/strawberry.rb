cask "strawberry" do
  version "0.7.2"
  sha256 "f85d1ff66d501f2e0c06349ce98e237fd91d73894a71e96d8363ffd804ccc04e"

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
