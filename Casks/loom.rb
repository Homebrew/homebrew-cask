cask "loom" do
  version "0.53.1"
  sha256 "0014429de0bd0c1e5e93c2ed23a9a94233b3a645480c53a899654760776ed551"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
