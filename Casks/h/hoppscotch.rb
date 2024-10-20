cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.9.3-0"
  sha256 arm:   "18055adb06ca89e872a7e5248e344a0057a6e3892f253447637fad076641bed1",
         intel: "18d930ff6567e13d0f61c16dc5b0e66594591be059ad1a82b5961e6226061646"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://github.com/hoppscotch/hoppscotch"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
