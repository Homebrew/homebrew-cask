cask "loom" do
  arch arm: "-arm64"

  version "0.200.0"
  sha256 arm:   "d9986369b5469b98ffeaebeadb87b9472e181c8e77c424f690ebb0fd98b6e847",
         intel: "b8dd6067813f530fa8b95619415a925a5f8e3e9a24f4032d91b63914d473bd36"

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
