cask "clipgrab" do
  version "3.9.7,1010"
  sha256 "514fc0e8ec9c37aface3eb070710de7dae329794dda63aac5d1e40d629220399"

  url "https://download.clipgrab.org/ClipGrab-#{version.csv.first}-cpython-#{version.csv.second}.dmg"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ClipGrab[._-]v?(\d+(?:\.\d+)+)-cpython-(\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"
end
