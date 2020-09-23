cask "loom" do
  version "0.50.11"
  sha256 "876c615a3d44256ffa855d39eaf5b631a630ab0c5d9bcd7e2a2e9bfa02138335"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
