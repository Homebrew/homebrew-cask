cask "icab" do
  version "6.0.6"
  sha256 "5466811d6db6019659ccf9c9de6b4d258f5e575c5de39be594cce54d04f393f3"

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
