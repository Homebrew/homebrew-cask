cask "icab" do
  version "6.0.5.1"
  sha256 "d3910c63ba1036df5048b1cacafd4b1d41e9d06517438322791256cbe50aa848"

  # icab.clauss-net.de/ was verified as official when first introduced to the cask
  url "http://icab.clauss-net.de/icab/iCab_#{version.major_minor_patch}.zip"
  appcast "http://www.icab.de/download.html",
          must_contain: version.major_minor
  name "iCab"
  desc "Alternative web browser"
  homepage "http://www.icab.de/"

  depends_on macos: ">= :high_sierra"

  app "iCab #{version.major_minor_patch}/iCab.app"
end
