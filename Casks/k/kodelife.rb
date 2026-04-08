cask "kodelife" do
  version "1.2.6,208"
  sha256 "7aef1540a9fa7275ac67e22f0a1a897624c09c7b11bf6425c39f91602f3565a8"

  url "https://hexler.net/pub/kodelife/kodelife-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "KodeLife"
  desc "Real-time GPU shader editor"
  homepage "https://hexler.net/kodelife"

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
