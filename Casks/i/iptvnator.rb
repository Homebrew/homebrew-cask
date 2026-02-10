cask "iptvnator" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "540d9fa8f1d0bcbafb1e9e6455756af8f058a1e3e3ad864a04ee501ac77704c0",
         intel: "4482f67d2cc10d748e76e109c43aa447e7da4b6e0bc934f8aa1e8cbeec30001f"

  url "https://github.com/4gray/iptvnator/releases/download/v#{version}/iptvnator-#{version}-mac-#{arch}.dmg"
  name "IPTVnator"
  desc "Open Source m3u, m3u8 player"
  homepage "https://github.com/4gray/iptvnator"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "iptvnator.app"

  zap trash: [
    "~/Library/Application Support/iptvnator",
    "~/Library/Preferences/com.electron.iptvnator.plist",
    "~/Library/Saved Application State/com.electron.iptvnator.savedState",
  ]
end
