cask "status-trio" do
  version "1.7.5"
  sha256 "e2989aab866d5283f459397557f8bd63d8804e5fdb511e9d31896001cf11f3bf"

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
