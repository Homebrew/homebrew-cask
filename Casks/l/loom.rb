cask "loom" do
  arch arm: "-arm64"

  version "0.320.14"
  sha256 arm:   "aec6ce5a1401129365e54648b45f6cf804875878a4b6c96f3e72dc15665da1a7",
         intel: "31043f6a49a84517dc0623652b7dd369ff6901f064a242949205f4682682ec4d"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
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
