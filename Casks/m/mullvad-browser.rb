cask "mullvad-browser" do
  version "12.5.5"
  sha256 "582279d100a5d4c0ca6cea1321e4efb1c92cce0048f04ea1d6df5ee9653c300d"

  url "https://cdn.mullvad.net/browser/#{version}/MullvadBrowser-#{version}-macos_ALL.dmg"
  name "Mullvad Browser"
  desc "Web browser focused on privacy and on minimizing tracking and fingerprinting"
  homepage "https://mullvad.net/en/browser"

  livecheck do
    url "https://mullvad.net/en/download/browser/macos/latest"
    strategy :header_match
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
