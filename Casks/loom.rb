cask "loom" do
  version "0.52.0"
  sha256 "398f3a594f65e6d184ef59241a2a8095e1cb1f40a19666193ae642f5a9a06d63"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
