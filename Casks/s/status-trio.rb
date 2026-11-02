cask "status-trio" do
  version "1.9.1"
  sha256 "8ee03127816d0f4af97c790448b9d69e0b2b23a3bf48c7bb0263a3642468ca0d"

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
