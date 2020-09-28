cask "icab" do
  version "6.0.1"
  sha256 "417ad1716c5d7d698d04e58c0886685f10c7571772cddf64e314b66e907311b6"

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
