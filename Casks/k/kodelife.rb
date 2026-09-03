cask "kodelife" do
  version "1.2.8,210"
  sha256 "d6eabca8dcc1c30cf7e43cabfb28b5f6c74f8c18dbf3164f13a5c0bf95ce13b7"

  url "https://hexler.net/pub/kodelife/kodelife-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "KodeLife"
  desc "Real-time GPU shader editor"
  homepage "https://hexler.net/kodelife"

  livecheck do
    url "https://hexler.net/kodelife/appcast/macos"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "KodeLife.app"

  zap trash: [
    "~/Library/Application Support/net.hexler.KodeLife",
    "~/Library/Caches/net.hexler.KodeLife",
    "~/Library/HTTPStorages/net.hexler.KodeLife*",
    "~/Library/Logs/net.hexler.KodeLife",
    "~/Library/Preferences/net.hexler.KodeLife.plist",
    "~/Library/Saved Application State/net.hexler.KodeLife.savedState",
  ], rmdir: "~/Documents/KodeLife"
end
