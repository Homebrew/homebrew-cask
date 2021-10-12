cask "snagit" do
  version "2021.4.2"
  sha256 "d75b540f31c443aa7c8ede476a13b13703b8f44a1f099d8af5622bc1bbd4d16c"

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

  depends_on macos: ">= :mojave"

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
