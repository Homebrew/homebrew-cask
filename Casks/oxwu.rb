cask "oxwu" do
  version "3.0.0"
  sha256 "f901d96c4856fb045edf26ce339dfac4c302d36a4e202d8365fef35e3c70b467"

  url "http://eew.earthquake.tw/releases/autoupdates/OXWU-osx64-#{version}.zip"
  name "OX Wake Up"
  desc "Taiwan Earthquake app"
  homepage "https://eew.earthquake.tw/"

  livecheck do
    url "https://eew.earthquake.tw/releases/autoupdates/package.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
  end

  depends_on macos: ">= :high_sierra"

  app "地牛Wake Up!.app"

  uninstall quit: "com.nw-builder.wakeup"

  zap trash: [
    "~/Library/Application Support/OXWU",
    "~/Library/Preferences/com.nw-builder.wakeup.plist",
    "~/Library/Saved Application State/com.nw-builder.wakeup.savedState",
  ]
end
