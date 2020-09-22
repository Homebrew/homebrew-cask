cask "blocs" do
  version "3.5.4"
  sha256 "506f6dc9fd46868a5c8b51d82841e770f3727ee6740fcce8875bf81a14f32dfc"

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast "https://blocsapp.com/release-notes.html"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
