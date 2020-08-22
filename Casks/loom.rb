cask "loom" do
  version "0.48.3"
  sha256 "fcc2eb2137f85bb475040365d2e844718f35018d341abb3ab6c7d30fdc5fb08d"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
