cask "loom" do
  version "0.50.7"
  sha256 "47ffaa0d727e92ad4a2041bbb68ac87034e06da965e3602f72740c611efca836"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
