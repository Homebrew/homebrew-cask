cask "icab" do
  version "6.0.15"
  sha256 "4b2bc5388ab70988e50c23b32837442f6d3eb29cb57a48358da6d46787f162d9"

  url "https://icab.clauss-net.de/icab/iCab_#{version.major_minor_patch}.zip",
      verified: "icab.clauss-net.de/"
  appcast "http://www.icab.de/download.html",
          must_contain: version.major_minor
  name "iCab"
  desc "Alternative web browser"
  homepage "http://www.icab.de/"

  depends_on macos: ">= :high_sierra"

  app "iCab #{version.major_minor_patch}/iCab.app"
end
