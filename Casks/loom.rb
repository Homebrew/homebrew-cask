cask "loom" do
  version "0.91.0"
  sha256 "28a45effc6475516307f24ea6ec09860f32da11ba3ab63f3c27ca3fbab21ea6a"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"
end
