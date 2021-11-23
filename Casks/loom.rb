cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.106.7"

  if Hardware::CPU.intel?
    sha256 "7c8650f2bb9a99f4e2cb47dd273b16e615e508b0daad5922b9c382a1e4451c7e"
  else
    sha256 "32d4b318afc8b93e9dfbf41aedee24147609bac29396bb523a524a637073f27b"
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
