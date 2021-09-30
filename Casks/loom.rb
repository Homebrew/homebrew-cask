cask "loom" do
  version "0.100.3"

  if Hardware::CPU.intel?
    sha256 "c23f725dd41918bc3defc888662fc8ccf0e734115badc5ff852bc60f5f44dcbb"

    url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  else
    sha256 "f526b4ea7ac13ccaa6f84081615bf8f6c2af4cf13f3754f252636c04524deaa8"

    url "https://cdn.loom.com/desktop-packages/Loom-#{version}-arm64.dmg"
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
