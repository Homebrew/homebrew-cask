cask "loom" do
  arch arm: "-arm64"

  version "0.186.2"
  sha256 arm:   "c6defece739a98a03bbb6798557339df50bfb64e9b70a4618486f143abe9898a",
         intel: "8e7cfdf32f77c98aead6fa81edae34bd68b7049fe6af44abca81a054a14c3763"

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
