cask "keysmith" do
  version "1.0.3"
  sha256 "896eac341af9b5b66be2c44b229dcf5e7207ce3c1ef7ff2b1fe9b927060d3004"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
