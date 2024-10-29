cask "loom" do
  arch arm: "-arm64"

  version "0.259.1"
  sha256 arm:   "e3230d6eb51728ee211c8c33d954490d628f05bb5f64f23101c5d07852abdb10",
         intel: "65703b319154705432264819e147ec9ba7b320a83665a1e097968ac64bee667d"

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
