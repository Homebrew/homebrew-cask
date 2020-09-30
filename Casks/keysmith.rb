cask "keysmith" do
  version "1.1.2"
  sha256 "816e534e6d619a81612b6671e483f1536d92959d127dbb0c81a4cd6835fc4147"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
