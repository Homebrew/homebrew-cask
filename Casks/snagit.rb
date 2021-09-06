cask "snagit" do
  version "2021.4.1"
  sha256 "5d0c04a8f95bda703b25af8e5b58e454301a1e667b66f39d56a4132c8f40d7cd"

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
end
