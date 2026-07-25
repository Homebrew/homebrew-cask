cask "kodelife" do
  version "1.2.7,209"
  sha256 "ddf5cae73c6df0715069c73eca4e5fee8b1e81cdba828ba9a592f8b1d0cf337d"

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
