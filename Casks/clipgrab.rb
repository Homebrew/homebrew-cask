cask "clipgrab" do
  version "3.8.15"
  sha256 "7820ef32c340bcfa0e26f74b5b8bc7a573b011cf86fbdccb79c892ebd3e0bda4"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast "https://clipgrab.org/"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
