cask "status-trio" do
  version "1.10.3"
  sha256 "932115daac9a3d7188fa21b8635ea75a66b3b6a2fec2a9eae6d4aad50f0da87e"

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
