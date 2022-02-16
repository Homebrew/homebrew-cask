cask "nrlquaker-winbox" do
  version "3.32.0"
  sha256 "7db9d1169b1e1b961ec5793372fe4341adf91ffe9fbdc9d2a31fb18522f048e3"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
