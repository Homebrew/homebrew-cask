cask "orange" do
  version "3.26.0"
  sha256 "21388b5e62c5c8e22bd15696f974901e918b718a7ae4e874d569781ffaddb80c"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python37.dmg"
  appcast "https://github.com/biolab/orange3/releases.atom"
  name "Orange"
  homepage "https://orange.biolab.si/"

  app "Orange#{version.major}.app"
end
