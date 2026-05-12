cask "iptvnator" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "33d71542bc750101b2c3afcde0c1c9639a9881ed68990121884c81ad2ee26e8b",
         intel: "9d515307d2a980304555e2e98dab7dfe393e044425e4a8b5bbb83c5b87c99327"

  url "https://github.com/4gray/iptvnator/releases/download/v#{version}/iptvnator-#{version}-mac-#{arch}.dmg"
  name "IPTVnator"
  desc "Open Source m3u, m3u8 player"
  homepage "https://github.com/4gray/iptvnator"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "iptvnator.app"

  zap trash: [
    "~/Library/Application Support/iptvnator",
    "~/Library/Preferences/com.electron.iptvnator.plist",
    "~/Library/Saved Application State/com.electron.iptvnator.savedState",
  ]
end
