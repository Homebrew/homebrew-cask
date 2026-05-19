cask "mullvad-browser" do
  version "15.0.14"
  sha256 "0c9a84c2f8544e020c1cc8c8e3aaa452136d2237eddbb01b5c696da73c66fa17"

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
