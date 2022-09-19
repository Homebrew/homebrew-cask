cask "iptvnator" do
  version "0.11.0"
  sha256 "97bd953a8c88a5cd281159b093f14e7f8e180c7af439dfe96078f29f09819303"

  url "https://github.com/4gray/iptvnator/releases/download/v#{version}/IPTVnator-#{version}-universal.dmg"
  name "IPTVnator"
  desc "Open Source m3u, m3u8 player"
  homepage "https://github.com/4gray/iptvnator"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "iptvnator.app"

  zap trash: [
    "~/Library/Application Support/iptvnator",
    "~/Library/Preferences/com.electron.iptvnator.plist",
    "~/Library/Saved Application State/com.electron.iptvnator.savedState",
  ]
end
