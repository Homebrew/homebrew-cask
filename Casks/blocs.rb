cask "blocs" do
  version "4.0.4,404"
  sha256 :no_check

  url "https://blocsapp.com/download/Blocs.zip"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  livecheck do
    url "https://blocsapp.com/update/v#{version.major}/info.xml"
    strategy :sparkle
  end

  auto_updates true
  container nested: "Blocs/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
