cask "leocad" do
  version "19.07.1"
  sha256 "5f0a63b32b86d3ec50deb465e492189132fcd170594c0bef0937c1eead57899c"

  url "https://github.com/leozide/leocad/releases/download/v#{version}/LeoCAD-macOS-#{version}.dmg"
  name "LeoCAD"
  desc "CAD program for creating virtual LEGO models"
  homepage "https://github.com/leozide/leocad"

  livecheck do
    url :url
    strategy :git
  end

  depends_on macos: ">= :sierra"

  app "LeoCAD.app"
end
