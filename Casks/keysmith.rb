cask "keysmith" do
  version "1.15.2"
  sha256 "56f1beb671f2f6b24b429c7c486e5d758aea11dd25031227cab46291c68f9746"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
