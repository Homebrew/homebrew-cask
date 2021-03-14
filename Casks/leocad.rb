cask "leocad" do
  version "21.03"
  sha256 "52459d5c4d143a7dea917e600cb80061c64d96894258be68c7b54d4a9794f971"

  url "https://github.com/leozide/leocad/releases/download/v#{version}/LeoCAD-macOS-#{version}.dmg"
  appcast "https://github.com/leozide/leocad/releases.atom"
  name "LeoCAD"
  desc "CAD program for creating virtual LEGO models"
  homepage "https://github.com/leozide/leocad"

  depends_on macos: ">= :sierra"

  app "LeoCAD.app"
end
