cask "mullvad-browser" do
  version "15.0.12"
  sha256 "e245cc337ac582aab9710380c7552a02f967e07839de98c7bcc9948ed7b20360"

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
