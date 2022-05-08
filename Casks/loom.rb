cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.126.0"

  if Hardware::CPU.intel?
    sha256 "458f2587391de81a91eb4a160371f376e6664a0e1b5e20b2a25c9259575c6226"
  else
    sha256 "d48189e554bfe385f8f342d2bf7c38367432a93568779412a824aedaf3afec73"
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

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
