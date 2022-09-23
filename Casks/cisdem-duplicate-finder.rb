cask "cisdem-duplicate-finder" do
  version "6.1.0"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-duplicatefinder.dmg"
  name "cisdem-duplicate-finder"
  desc "Duplicate Finder"
  homepage "https://www.cisdem.com/duplicate-finder.html"

  depends_on macos: ">= :el_capitan"

  app "Cisdem Duplicate Finder.app"
end
