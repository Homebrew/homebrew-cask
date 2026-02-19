cask "iptvnator" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "5815adc47d192fbf2a47ac96f5ff88027e109b2feb4cec9328c6a0634b3425f0",
         intel: "a5b81f1bc34dc5d437bd85ac77281655e3451d50c112e24f0a542f574de1afe5"

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
