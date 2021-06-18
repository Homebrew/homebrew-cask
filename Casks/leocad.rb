cask "leocad" do
  version "21.06"
  sha256 "7d6e71e862491e46e7b27a06f87e852417992f31c30755926c295ed66e51f242"

  url "https://github.com/leozide/leocad/releases/download/v#{version}/LeoCAD-macOS-#{version}.dmg"
  name "LeoCAD"
  desc "CAD program for creating virtual LEGO models"
  homepage "https://github.com/leozide/leocad"

  depends_on macos: ">= :sierra"

  app "LeoCAD.app"
end
