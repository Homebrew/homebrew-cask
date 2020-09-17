cask "loom" do
  version "0.50.6"
  sha256 "bf62c81107e2902017915160466b2e8c0a6576c8be810ed034e511939c4c9371"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
