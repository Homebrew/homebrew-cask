cask "clipgrab" do
  version "3.9.6"
  sha256 "45282684f1f8e957a98a4023467bc693153368618935698e7b4f2a9f44773495"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  livecheck do
    url "https://clipgrab.org/"
    strategy :page_match
    regex(%r{href=.*?/ClipGrab-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
