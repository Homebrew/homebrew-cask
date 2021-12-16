cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.110.3"

  if Hardware::CPU.intel?
    sha256 "604f494c50d0958a5c182097929535022e396279211c4afcb7dd37520c775a2e"
  else
    sha256 "26f8c4b93db1b6219f80c91022ac3413d26862ce1dfd273e23ae162a82420edf"
  end

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
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
