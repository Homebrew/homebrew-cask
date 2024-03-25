cask "iptvnator" do
  version "0.15.1"
  sha256 "b3d21827abe9bd168f016a72add6601b644a3ffdc33912da1bed0d88054dab30"

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
