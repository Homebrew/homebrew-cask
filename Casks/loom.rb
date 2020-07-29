cask "loom" do
  version "0.44.0"
  sha256 "15fd88357412bc10cf969e3e0e27dd891a4c40bafb671e38219cc9084429abcc"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
