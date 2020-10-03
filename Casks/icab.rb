cask "icab" do
  version "6.0.3"
  sha256 "641610d199b2532868f924a4710d8166bcf352bb9811400565d07f4bf25bbc07"

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
