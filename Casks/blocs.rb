cask "blocs" do
  version "4.0.1,401"
  sha256 :no_check

  url "https://blocsapp.com/download/Blocs.zip"
  appcast "https://blocsapp.com/update/v#{version.major}/info.xml"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
