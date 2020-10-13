cask "strawberry" do
  version "0.8.1"
  sha256 "fb30c2c24465c13bdd4c710190d93bfc88e4368c2495cdb60fc3cac9a001fc12"

  # github.com/strawberrymusicplayer/strawberry/ was verified as official when first introduced to the cask
  url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-catalina.dmg"
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
