cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.105.0"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "8f14b1a173e58c056934d6d40a893ab531704152906fbb8038e577fac19a7e86"
  else
    sha256 "ac4f6547e80d0e9426a5ab37b3d787b0b71a308cd77e54b2a600351b251d8f3f"
  end

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
