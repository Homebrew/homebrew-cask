cask "mullvad-browser" do
  version "14.5.2"
  sha256 "95f6973317d57390157b1abc955b99f54218695db61894adb88874efb999742e"

  url "https://cdn.mullvad.net/browser/#{version}/mullvad-browser-macos-#{version}.dmg"
  name "Mullvad Browser"
  desc "Web browser focused on privacy and on minimizing tracking and fingerprinting"
  homepage "https://mullvad.net/en/browser"

  livecheck do
    url "https://mullvad.net/en/download/browser/macos/latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mullvad Browser.app"

  uninstall quit: "net.mullvad.mullvadbrowser"

  zap trash: [
    "~/Library/Application Support/MullvadBrowser",
    "~/Library/Caches/MullvadBrowser",
    "~/Library/Preferences/net.mullvad.mullvadbrowser.plist",
    "~/Library/Saved Application State/net.mullvad.mullvadbrowser.savedState",
  ]
end
