cask "loom" do
  version "0.64.2"
  sha256 "953a77abcc4b3cee9b485242c7b941f20f437c0fefd2672307ea2ce699c61de1"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
