cask "ab-download-manager" do
  arch arm: "arm64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "8fee777fa6c7240c6977fac1fb43cec3fdaa4e57582803436d10b31cc84cbbfc",
         intel: "0305b627cce33393df643ad0da4516d3be398380bd210468095292f43a0f7d2d"

  url "https://github.com/amir1376/ab-download-manager/releases/download/v#{version}/ABDownloadManager_#{version}_mac_#{arch}.dmg"
  name "AB Download Manager"
  desc "Download manager that speeds up your downloads"
  homepage "https://abdownloadmanager.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "ABDownloadManager.app"

  uninstall quit:       "com.abdownloadmanager.desktop",
            login_item: "ABDownloadManager",
            delete:     "~/Library/LaunchAgents/AB Download Manager.plist"

  zap trash: [
    "~/.abdm",
    "~/Library/Preferences/com.abdownloadmanager.desktop.desktop.plist",
  ]
end
