cask "kodelife" do
  version "1.1.0,173"
  sha256 "480168e1fac44d63c1dd5c727cbce8bc0931182b55bef45c799aa582eac31449"

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
