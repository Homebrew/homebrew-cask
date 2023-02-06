cask "loom" do
  arch arm: "-arm64"

  version "0.154.3"
  sha256 arm:   "3ee9e6c519723a4bfd972bda4168805bc0e999e481fd46b54141510c63ad2ae3",
         intel: "a802026a79b9107aa7b35379e6908100b0d5f87683cff2e285238ddb5bb534bc"

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
