cask "snagit" do
  version "2023.1.2"
  sha256 "1ea9af1752fdfcff96b396bc1fe4dad5d1697a791fa74e2b941130efb0904d6a"

  url "https://download.techsmith.com/snagitmac/releases/#{version.major[-2..]}#{version.minor_patch.no_dots}/snagit.dmg"
  name "Snagit"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/screen-capture.html"

  livecheck do
    url "https://www.techsmith.com/api/v/1/products/getallversions/100"
    strategy :page_match do |page|
      v = JSON.parse(page).first
      "20#{v["Major"]}.#{v["Minor"]}.#{v["Maintenance"]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "Snagit #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.TechSmith.Snagit*",
    "~/Library/Group Containers/*.com.techsmith.snagit",
    "~/Library/Preferences/com.TechSmith.Snagit*.plist",
    "~/Library/Preferences/com.techsmith.snagit.capturehelper*.plist",
    "~/Library/Saved Application State/com.TechSmith.Snagit*.savedState",
    "~/Library/WebKit/com.TechSmith.Snagit*",
  ]
end
