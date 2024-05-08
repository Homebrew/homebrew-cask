cask "steelseries-exactmouse-tool" do
  version "1.0"
  sha256 :no_check

  url "https://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg",
      verified: "steelseriescdn.com/"
  name "SteelSeries ExactMouse Tool"
  desc "Keyboard and mouse configuration tool"
  homepage "https://steelseries.com/downloads"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SteelSeries ExactMouse Tool.app"

  uninstall quit: "com.SteelSeries.SteelSeries-ExactMouse-Tool"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.SteelSeries.SteelSeries-ExactMouse-Tool.help",
    "~/Library/Preferences/com.SteelSeries.SteelSeries-ExactMouse-Tool.plist",
  ]
end
