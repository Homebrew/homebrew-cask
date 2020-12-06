cask "snagit" do
  version "2021.0.2"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.techsmith.com/snagitmac/releases/Snagit.dmg"
  name "Snagit"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/screen-capture.html"

  depends_on macos: ">= :mojave"

  app "Snagit #{version.major}.app"
end
