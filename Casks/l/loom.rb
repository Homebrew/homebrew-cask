cask "loom" do
  arch arm: "-arm64"

  version "0.243.4"
  sha256 arm:   "34597acbfa39c70678c4fd75103f0c494b3de2bf3938cb6ff543d271f3ba4d5f",
         intel: "0caae881c1e983436b9d9b46cfc16756e495f407d6440b0a8cb573be5a0a8750"

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
