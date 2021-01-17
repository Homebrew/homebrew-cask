cask "leocad" do
  version "21.01"
  sha256 "52ca051486b800104ab4f9faf38807a30d583dcdabfc44a36fb61bbee0e02187"

  url "https://github.com/leozide/leocad/releases/download/v#{version}/LeoCAD-macOS-#{version}.dmg"
  appcast "https://github.com/leozide/leocad/releases.atom"
  name "LeoCAD"
  desc "CAD program for creating virtual LEGO models"
  homepage "https://github.com/leozide/leocad"

  depends_on macos: ">= :sierra"

  app "LeoCAD.app"
end
