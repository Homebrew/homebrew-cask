cask "blocs" do
  version "3.5.3"
  sha256 "4397788a03ba6330a27ed82cc9538d4500af87f89b2f920508e4a9aded36cd2a"

  url "https://blocsapp.com/download/Blocs#{version.major}.zip"
  appcast "https://blocsapp.com/release-notes.html"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs#{version.major}/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
