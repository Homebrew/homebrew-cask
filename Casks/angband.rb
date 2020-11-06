cask "angband" do
  version "4.2.1"
  sha256 "82fb2a2939c4ad2d3157a13013a69291cb44165052e01b1c4d4fc35f8a3fbe2b"

  url "https://rephial.org/downloads/#{version.major_minor}/Angband-#{version}-osx.dmg"
  appcast "https://rephial.org/release/"
  name "Angband"
  homepage "https://rephial.org/"

  depends_on macos: ">= :sierra"

  app "Angband.app"
end
