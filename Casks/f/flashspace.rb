cask "flashspace" do
  version "3.7.45"
  sha256 "1b90e7b612c261985649acd9a7b3d88f6d7569ade0e8a0c2700b41fde5bae2d0"

  url "https://github.com/wojciech-kulik/FlashSpace/releases/download/v#{version}/FlashSpace.app.zip"
  name "FlashSpace"
  desc "Virtual workspace manager"
  homepage "https://github.com/wojciech-kulik/FlashSpace"

  depends_on macos: ">= :sonoma"

  app "FlashSpace.app"

  uninstall quit: "pl.wojciechkulik.FlashSpace"

  zap trash: [
    "~/Library/Application Scripts/pl.wojciechkulik.FlashSpace",
    "~/Library/Autosave Information/pl.wojciechkulik.FlashSpace.plist",
    "~/Library/Caches/pl.wojciechkulik.FlashSpace",
    "~/Library/HTTPStorages/pl.wojciechkulik.FlashSpace",
    "~/Library/Preferences/FlashSpace.plist",
    "~/Library/Preferences/pl.wojciechkulik.FlashSpace.plist",
    "~/Library/Saved Application State/pl.wojciechkulik.FlashSpace.savedState",
  ]
end
