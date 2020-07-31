cask "fm3-edit" do
  version "1.01.09"
  sha256 "b8b16024fdb462c2c3f364e7eabfadbb9714ea96f2414fb40ab4b3848dd30450"

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/fm3-edit/"
  name "FM3 Edit"
  homepage "https://www.fractalaudio.com/fm3-edit/"

  app "FM3-Edit.app"

  zap trash: "~/Library/Application Support/Fractal Audio/FM3-Edit"
end
