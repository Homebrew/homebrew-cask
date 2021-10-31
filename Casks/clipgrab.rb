cask "clipgrab" do
  version "3.9.7"
  sha256 "691445482234ccbe62c7065ca0feb7a471d5408a9b90f85896872c10c10930eb"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  livecheck do
    url "https://clipgrab.org/"
    strategy :page_match
    regex(%r{href=.*?/ClipGrab-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
