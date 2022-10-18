cask "iptvnator" do
  version "0.11.1"
  sha256 "f125a29d43e696b89fa875d8d29402eefc3b799aad9d3536bcea52221c48f73f"

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
