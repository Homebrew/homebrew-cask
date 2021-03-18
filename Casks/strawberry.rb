cask "strawberry" do
  version "0.9.1"

  if MacOS.version <= :mojave
    sha256 "9902394d067adaf8a27284463b722fced159aff6ae1f629678a93ab5d08913dc"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-mojave-x86_64.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  elsif MacOS.version <= :catalina
    sha256 "c1efef9dbe5f9167036e155cfd933191eaf06f1162c65708bfed12f65b51cb24"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-catalina-x86_64.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  else
    sha256 "410e83fd0a2c8891cccf54b86f19ec4ac4d953a4dfe4cf81663e84703c5937d1"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-bigsur-x86_64.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  end

  appcast "https://github.com/strawberrymusicplayer/strawberry/releases.atom"
  name "Strawberry"
  desc "Music player and music collection organizer"
  homepage "https://www.strawberrymusicplayer.org/"

  depends_on macos: ">= :mojave"

  app "strawberry.app"

  zap trash: [
    "~/Library/Application Support/Strawberry",
    "~/Library/Caches/Strawberry",
    "~/Library/Preferences/org.strawberrymusicplayer.Strawberry.plist",
    "~/Library/Saved Application State/org.strawberrymusicplayer.strawberry.savedState",
  ]
end
