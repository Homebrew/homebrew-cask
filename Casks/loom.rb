cask "loom" do
  version "0.45.0"
  sha256 "ea98f12fa5672c8149f504699d009a72043f3454493dad21eb35d5d808aadbe1"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
