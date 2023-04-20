cask "iptvnator" do
  version "0.13.0"
  sha256 "e4e30d5fb73d00bb1966cf0dee5982d6142152f84c535ccd7be9175e140cfd19"

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
