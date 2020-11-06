cask "fm3-edit" do
  version "1.01.10"
  sha256 "169e0dce086da211aaf9c2335349eee3f584d975e48d0a4da91734ab04fd9225"

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/fm3-edit/"
  name "FM3 Edit"
  homepage "https://www.fractalaudio.com/fm3-edit/"

  app "FM3-Edit.app"

  zap trash: "~/Library/Application Support/Fractal Audio/FM3-Edit"
end
