cask "icab" do
  version "6.0.7"
  sha256 "77c6c46ed8540c3980dfae9170d92751f5b558181bdac93b9beca64e98aa639d"

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
