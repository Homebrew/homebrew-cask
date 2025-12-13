cask "iptvnator" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "7022eb675f40486836800bc87cef00542afab35a370598130c29407f84de6ac5",
         intel: "267e70e3767126ea711963df2e888ad73bc7929c8874008f2e3d7aa78af2e18a"

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
