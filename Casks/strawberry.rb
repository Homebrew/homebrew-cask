cask "strawberry" do
  version "0.9.2"

  if MacOS.version <= :mojave
    sha256 "9902394d067adaf8a27284463b722fced159aff6ae1f629678a93ab5d08913dc"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-mojave-x86_64.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  elsif MacOS.version <= :catalina
    sha256 "c1efef9dbe5f9167036e155cfd933191eaf06f1162c65708bfed12f65b51cb24"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-catalina-x86_64.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  else
    sha256 "bd548822cbfeb4b9640f9169ba2ffb32a35debda437b23199beb1cbd39ace060"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-bigsur-x86_64.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  end

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
