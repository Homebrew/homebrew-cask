cask "loom" do
  version "0.92.0"
  sha256 "755e7f6d9e059cef937f3229556532621e353652f429f6636f6e6ff3d7457572"

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
