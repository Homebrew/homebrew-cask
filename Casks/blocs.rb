cask "blocs" do
  version "3.5.6"
  sha256 "aad40ef910f495cf2873409e5b24a67b18f1e5690a0d798b6afb478e5947c380"

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast "https://blocsapp.com/release-notes.html"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
