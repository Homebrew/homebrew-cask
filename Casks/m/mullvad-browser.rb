cask "mullvad-browser" do
  version "16.0.1"
  sha256 "1011cde0f371f7b8d3bc6fb25c2e58f1d69160b4b859de7352fa14c85a29af04"

  url "https://cdn.mullvad.net/browser/#{version}/mullvad-browser-macos-#{version}.dmg"
  name "Mullvad Browser"
  desc "Web browser focused on privacy and on minimizing tracking and fingerprinting"
  homepage "https://mullvad.net/browser"

  livecheck do
    url "https://cdn.mullvad.net/browser/update_responses/update_1/release/download-macos.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Mullvad Browser.app"

  uninstall quit: "net.mullvad.mullvadbrowser"

  zap trash: [
    "~/Library/Application Support/MullvadBrowser",
    "~/Library/Caches/MullvadBrowser",
    "~/Library/Preferences/net.mullvad.mullvadbrowser.plist",
    "~/Library/Saved Application State/net.mullvad.mullvadbrowser.savedState",
  ]
end
