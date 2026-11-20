cask "status-trio" do
  version "1.10.2"
  sha256 "587a02cfe0012e3769865f5f9d92b2b72a95d72f81d1aff0db203e579cd2da72"

  url "https://github.com/lingyired/status-trio/releases/download/v#{version}/StatusTrio-#{version}.dmg"
  name "Status Trio"
  desc "Menu bar and Dock monitor for Wi-Fi, battery, and volume"
  homepage "https://github.com/lingyired/status-trio"

  auto_updates true
  depends_on macos: :ventura

  app "Status Trio.app"

  uninstall quit: "com.lingsmbp.StatusTrio"

  zap trash: [
    "~/Library/Application Support/StatusTrio",
    "~/Library/Caches/com.lingsmbp.StatusTrio",
    "~/Library/Preferences/com.lingsmbp.StatusTrio.plist",
  ]
end
