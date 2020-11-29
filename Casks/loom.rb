cask "loom" do
  version "0.61.1"
  sha256 "1d40cca7249e9f4b2bfce3e69393b7bd90def855cd8305122a5eee5a1566a633"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
