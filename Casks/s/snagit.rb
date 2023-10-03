cask "snagit" do
  version "2024.0.0"
  sha256 "d24f7c13b25f143627e94b48b91fe1a856963a17b1ca0530b107c23586903582"

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
