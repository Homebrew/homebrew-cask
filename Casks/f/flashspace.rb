cask "flashspace" do
  version "4.19.82"
  sha256 "f5a114ed7d42cb8b5379003983584c3094a6b362cc39e4da331d3c0492fb22ba"

  url "https://github.com/wojciech-kulik/FlashSpace/releases/download/v#{version}/FlashSpace.app.zip"
  name "FlashSpace"
  desc "Virtual workspace manager"
  homepage "https://github.com/wojciech-kulik/FlashSpace"

  auto_updates true
  depends_on macos: :sonoma

  app "FlashSpace.app"
  binary "#{appdir}/FlashSpace.app/Contents/Resources/flashspace"

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
