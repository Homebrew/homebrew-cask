cask "flashspace" do
  version "0.13.15"
  sha256 "17eb7c66be17464f612fe4bab9988fba34854093a3fd4c96b1d195ff674afe2c"

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
