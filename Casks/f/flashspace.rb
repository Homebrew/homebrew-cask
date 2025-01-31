cask "flashspace" do
  version "0.11.13"
  sha256 "9225ff22717b96aa718db6d68291105fdbff9987925198c868037f74edd1e4ce"

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
