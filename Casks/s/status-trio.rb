cask "status-trio" do
  version "1.9.5"
  sha256 "b43e6a6a00302079d5481f5a625265dfacbb746fbea1a7834b6dd990b1b26cd5"

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
