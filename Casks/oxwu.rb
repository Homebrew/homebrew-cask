cask "oxwu" do
  arch arm: "arm", intel: "intel"

  on_intel do
    version "3.0.0"
    sha256 "f901d96c4856fb045edf26ce339dfac4c302d36a4e202d8365fef35e3c70b467"
    url "http://eew.earthquake.tw/releases/autoupdates/OXWU-osx64-#{version}.zip"
  end
  on_arm do
    version :latest
    sha256 :no_check
    url "https://eew.earthquake.tw/releases/mac/arm64/oxwu-mac-arm64.dmg"
  end

  name "OX Wake Up"
  desc "Taiwan Earthquake app"
  homepage "https://eew.earthquake.tw/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "地牛Wake Up!.app"

  uninstall quit: "com.nw-builder.wakeup"

  zap trash: [
    "~/Library/Application Support/OXWU",
    "~/Library/Preferences/com.nw-builder.wakeup.plist",
    "~/Library/Saved Application State/com.nw-builder.wakeup.savedState",
  ]
end
