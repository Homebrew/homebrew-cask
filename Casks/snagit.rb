cask "snagit" do
  version "2021.4.0"
  sha256 :no_check

  url "https://download.techsmith.com/snagitmac/releases/Snagit.dmg"
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
end
