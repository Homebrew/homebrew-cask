cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.112.1"

  if Hardware::CPU.intel?
    sha256 "216667496fc31dbd4c1513c487da53fd25a08ea24e5bceec3d7ad53ff8c7340c"
  else
    sha256 "6c981563138d5b341bd8a6371e90a6810fad8754cd607c27c40ea79c95c50918"
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

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
