cask "loom" do
  version "0.55.0"
  sha256 "900e6bd0e27d8bfddd93b7232ef4f0d03cc1f02ca3ff1bc4cd3a8829a3f42ca3"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
