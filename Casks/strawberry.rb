cask "strawberry" do
  version "0.8.5"

  if MacOS.version <= :mojave
    sha256 "05351f24c29eb4f5a5cee9da1272e4c034e2d9277091aa1f9cb40d7f655c8fba"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-mojave.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  elsif MacOS.version <= :catalina
    sha256 "abadc6ebb4c6431e5c6b127ec4509b56a2918fe641adcf0b96c90c4fb94e184e"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-catalina.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  else
    sha256 "82746e7c784c837aa614ff011c337323d0b087f76da3567b53b543ddcf258b28"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-bigsur.dmg",
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
