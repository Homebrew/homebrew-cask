cask "pandora" do
  version "15.0.3"
  sha256 "1858152de9d5fe18c876093a95c39c92fe878fba633c3e54e27fcdeb70a06c15"

  # p-desktop-app.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://p-desktop-app.s3.amazonaws.com/releases/Pandora-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://pdora.co/desktop_mac_download"
  name "Pandora"
  desc "Desktop client for the Pandora web radio service"
  homepage "https://www.pandora.com/desktop"

  app "Pandora.app"

  zap trash: "~/Library/Preferences/com.pandora.desktop.plist"
end
