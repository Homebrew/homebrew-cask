cask "snagit" do
  version "2021.1.0,98022"
  sha256 :no_check

  url "https://download.techsmith.com/snagitmac/releases/Snagit.dmg"
  name "Snagit"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/screen-capture.html"

  depends_on macos: ">= :mojave"

  app "Snagit #{version.major}.app"
end
