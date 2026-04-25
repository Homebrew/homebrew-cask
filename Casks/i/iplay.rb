cask "iplay" do
  version "1.2.14"
  sha256 :no_check

  url "https://artifact.saltpi.cn/build/iPlay/macOS/latest.dmg"
  name "iPlay"
  desc "Multimedia player"
  homepage "https://iplay.saltpi.cn/"

  livecheck do
    url "https://artifact.saltpi.cn/build/iPlay/macOS/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "iPlay.app"

  zap trash: [
    "~/Library/Application Support/top.ourfor.app.iPlayClient",
    "~/Library/Caches/top.ourfor.app.iPlayClient",
    "~/Library/HTTPStorages/top.ourfor.app.iPlayClient",
    "~/Library/Preferences/top.ourfor.app.iPlayClient.plist",
    "~/Library/Saved Application State/top.ourfor.app.iPlayClient.savedState",
    "~/Library/WebKit/top.ourfor.app.iPlayClient",
  ]
end
