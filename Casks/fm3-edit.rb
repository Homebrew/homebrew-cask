cask "fm3-edit" do
  version "1.02.00"
  sha256 "4fd86344fc45cad9c0a9c5421b8cdb78acb7a62f701fd860b67c10de62bfacf2"

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/fm3-edit/"
  name "FM3 Edit"
  homepage "https://www.fractalaudio.com/fm3-edit/"

  app "FM3-Edit.app"

  zap trash: "~/Library/Application Support/Fractal Audio/FM3-Edit"
end
