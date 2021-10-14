cask "loom" do
  version "0.102.0"

  if Hardware::CPU.intel?
    sha256 "141d4740c91ea4c4809d9fd0f749c23e8841cf979b59d6fdc6499925189c8323"

    url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  else
    sha256 "e1249d8816ac68a619d1d524f8d4e790326e83735fbd61e5ddf89570a17b85ee"

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
