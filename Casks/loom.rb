cask "loom" do
  version "0.56.0"
  sha256 "757f4b6e88e7cab11653bec342d9a2d8a001c53c3c8c9d651f4b10f6a6e45764"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
