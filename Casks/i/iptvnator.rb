cask "iptvnator" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "1e30ca02e43f60c1233feb76a6af63b36ac4fe30321c1f642055bb69f47df799",
         intel: "f0ed47d9eb59333440bdf1c6e4aceadc1d0c3d65fa5f56f0ee712e1531e2941a"

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
