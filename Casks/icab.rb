cask "icab" do
  version "6.0.5.1"
  sha256 "c51322df747350c18c41cb09ce6deb3b545000cfe161dad769c6bc65a598b9af"

  # icab.clauss-net.de/ was verified as official when first introduced to the cask
  url "http://icab.clauss-net.de/icab/iCab_#{version}.zip"
  appcast "http://www.icab.de/download.html",
          must_contain: version.major_minor
  name "iCab"
  desc "Alternative web browser"
  homepage "http://www.icab.de/"

  depends_on macos: ">= :high_sierra"

  app "iCab #{version}/iCab.app"
end
