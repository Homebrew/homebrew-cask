cask "mullvad-browser" do
  version "15.0"
  sha256 "ad7a0502eacf360962b60b7d5fcf6d4df38dd24204a1edc7c3a436d4fc019188"

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

  app "Mullvad Browser.app"

  uninstall quit: "net.mullvad.mullvadbrowser"

  zap trash: [
    "~/Library/Application Support/MullvadBrowser",
    "~/Library/Caches/MullvadBrowser",
    "~/Library/Preferences/net.mullvad.mullvadbrowser.plist",
    "~/Library/Saved Application State/net.mullvad.mullvadbrowser.savedState",
  ]
end
