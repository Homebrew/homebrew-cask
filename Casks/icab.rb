cask "icab" do
  version "6.0.9"
  sha256 "78747b9a08ab5ba6bf231e26828f7c9087797a382b76e31b6965cf86d7241f30"

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
