cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.106.0"

  if Hardware::CPU.intel?
    sha256 "8e044ab04724d08f3927b3f0f2a428d9045f6e3760c07c8895d1275cafa20a66"
  else
    sha256 "1a27041954392aa425fe62630598220c97664c80af74dc0e306d581ab1a3bc43"
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
