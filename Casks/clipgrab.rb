cask "clipgrab" do
  version "3.9.2"
  sha256 "98a70c8148be1a9e6d966f8e0864b83a67f0185e4fc78ee056e0f197d74ad317"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast "https://clipgrab.org/"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
