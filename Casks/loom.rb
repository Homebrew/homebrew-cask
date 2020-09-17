cask "loom" do
  version "0.50.8"
  sha256 "b8cfe81e6dd5ec696e997617f1bd800c7cbf9d2bf6749c2743835302c3abc286"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
