cask "blocs" do
  version "4.0.0"
  sha256 "2c2ea68ed791a79eadabd3cd41286fff488330610c0a2ae24dbfd216cfe99f7f"

  url "https://blocsapp.com/download/Blocs.zip"
  appcast "https://blocsapp.com/update/v#{version.major}/info.xml"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
