cask "loom" do
  version "0.62.1"
  sha256 "480a39eb6bf5589798efc98d0e7aa66f21348efa9f74d3f15583103f6920d7d1"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
