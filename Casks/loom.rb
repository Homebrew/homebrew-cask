cask "loom" do
  version "0.99.8"
  sha256 "0d32089126c1bf8053a2c2a83830d051bc018a0c1680318f9b72702946f43c26"

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
