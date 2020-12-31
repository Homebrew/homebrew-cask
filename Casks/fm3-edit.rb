cask "fm3-edit" do
  version "1.02.02"
  sha256 "fed96291ba84c9ec07976800140b492cdfb26c162a98f8d26db6fd1398763369"

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/fm3-edit/"
  name "FM3 Edit"
  homepage "https://www.fractalaudio.com/fm3-edit/"

  app "FM3-Edit.app"

  zap trash: "~/Library/Application Support/Fractal Audio/FM3-Edit"
end
