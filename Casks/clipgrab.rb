cask "clipgrab" do
  version "3.9.3"
  sha256 "b09ca32b4aa1debef962cff759e6c440e83ddd554d2e00df4057e86d41420a5e"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast "https://clipgrab.org/"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
