cask "loom" do
  version "0.60.2"
  sha256 "a7413be247db9518c513db0784df3a8a0b69a17fba9ac76738c3a7a4ad4da6c2"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
