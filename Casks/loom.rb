cask "loom" do
  version "0.61.0"
  sha256 "171930ac67eb2013a6432b37c3dafce038f406db395399e2e74bcb1fd3d29f66"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
