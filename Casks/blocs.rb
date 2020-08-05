cask "blocs" do
  version "3.5.2"
  sha256 "eec33031eb795ba5ea3f201e953a56bd8c5e71a34bb2dcf4f379d5e3e548075a"

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast "https://blocsapp.com/release-notes.html"
  name "Blocs"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
