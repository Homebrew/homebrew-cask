cask "mullvad-browser" do
  version "12.0.6"
  sha256 "36017e7de7b78b3b49a20f55be988189a0ee9b331fcafde257a18dd289048365"

  url "https://cdn.mullvad.net/browser/#{version}/MullvadBrowser-#{version}-macos_ALL.dmg"
  name "Mullvad Browser"
  desc "Web browser focused on privacy and on minimizing tracking and fingerprinting"
  homepage "https://mullvad.net/en/browser"

  livecheck do
    url "https://cdn.mullvad.net/browser/update_responses/update_1/release/downloads.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Mullvad Browser.app"

  uninstall quit: "net.mullvad.mullvadbrowser"

  zap trash: [
    "~/Library/Application Support/MullvadBrowser",
    "~/Library/Caches/MullvadBrowser",
    "~/Library/Preferences/net.mullvad.mullvadbrowser.plist",
    "~/Library/Saved Application State/net.mullvad.mullvadbrowser.savedState",
  ]
end
