cask "blocs" do
  version "3.5.7"
  sha256 "0ce58f9c17646ef4f42988c1ee1f689eb302461494d668bee87703ecaaba232f"

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast "https://blocsapp.com/release-notes.html"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
