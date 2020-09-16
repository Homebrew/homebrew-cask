cask "clipgrab" do
  version "3.8.14"
  sha256 "291b3d202a4761f2a4592913a67a587bf7d24c86076ffb0adfab61d60aacacc7"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast "https://clipgrab.org/"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
