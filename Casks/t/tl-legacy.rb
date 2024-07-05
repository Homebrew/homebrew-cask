cask "tl-legacy" do
  version "1.148.3"
  sha256 :no_check

  url "https://tlaun.ch/repo/downloads/TL_legacy.dmg"
  name "TL Legacy"
  desc "Launcher for Minecraft"
  homepage "https://tlaun.ch/"

  disable! date: "2024-07-04", because: :no_longer_available

  app "TL Legacy.app"

  zap trash: [
    "~/Library/Application Support/minecraft",
    "~/Library/Saved Application State/ru.turikhay.tlauncher.legacy.savedState",
  ]
end
