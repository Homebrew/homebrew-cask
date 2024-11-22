cask "kodelife" do
  version "1.1.9,194"
  sha256 "3f8827f24887182a03aa4a686db4bb7b0fc12181f24d13616f64c2d77686539f"

  url "https://hexler.net/pub/kodelife/kodelife-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "KodeLife"
  desc "Real-time GPU shader editor"
  homepage "https://hexler.net/software/kodelife"

  livecheck do
    url "https://hexler.net/kodelife/appcast/macos"
    strategy :sparkle
  end

  auto_updates true

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
