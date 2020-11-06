cask "blocs" do
  version "3.5.5"
  sha256 "b6d77c7d61279a71625b273f573fb8bb2fd9b7045ac6893faa23cc2d33513640"

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast "https://blocsapp.com/release-notes.html"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
