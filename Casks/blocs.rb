cask "blocs" do
  version "4.0.1"
  sha256 "d68e5ad79ae4c21dec0e92aa2623432099551095610dae25f6b76f1d338075ba"

  url "https://blocsapp.com/download/Blocs.zip"
  appcast "https://blocsapp.com/update/v#{version.major}/info.xml"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
