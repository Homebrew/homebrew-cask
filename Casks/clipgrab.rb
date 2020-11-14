cask "clipgrab" do
  version "3.9.1"
  sha256 "0c2cbe51ee204a4bdfaccc5f49b23300c9181dae7a7624d92b9007421a66b5dd"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast "https://clipgrab.org/"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
