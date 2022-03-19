cask "clipgrab" do
  version "3.9.7,1010"
  sha256 "514fc0e8ec9c37aface3eb070710de7dae329794dda63aac5d1e40d629220399"

  url "https://download.clipgrab.org/ClipGrab-#{version.csv.first}-cpython-#{version.csv.last}.dmg"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  livecheck do
    url "https://clipgrab.org/"
    regex(%r{href=.*?/ClipGrab[._-]v?(\d+(?:\.\d+)+)-cpython-(\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
