cask "clipgrab" do
  version "3.9.0"
  sha256 "f67a11742ee56ec9014449471b7f9fb803ae3260e3c2e9f25fdbb713913b70b1"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast "https://clipgrab.org/"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
