cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.14,10.76"
  sha256 arm:   "85C6BBBC1D1B95E2D920D8A42AEF6412C3829713A9C51E640941B7B3770AA1B8",
         intel: "F7A79418FE0F242C93804747CED15C7E97F467B5A041E1CC5DBD1FFD9CA132DE"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.netsarang.portx.sfl*",
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
    "~/Library/Preferences/com.netsarang.portx.plist",
    "~/Library/Saved Application State/com.netsarang.portx.savedState",
  ]
end
