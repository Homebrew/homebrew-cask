cask "keysmith" do
  version "1.6.0"
  sha256 "afe0a83ff58bd61f00e28f0c0b1d337ad7050ca50133c934888c643beca416df"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
