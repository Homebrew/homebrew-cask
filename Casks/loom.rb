cask "loom" do
  version "0.50.10"
  sha256 "917222ef6a46ea44dabea63d65da61d6e2b72af834d4147322658bc07bd0ced0"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
