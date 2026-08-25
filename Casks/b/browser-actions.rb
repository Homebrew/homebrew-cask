cask "browser-actions" do
  version "2026.1.0,5349"
  sha256 "e28adfa17599ee5e721b72fc9a0b2a6b3de97a32614b463a59142879659eaa91"

  url "https://downloads.actions.work/browser-actions/Browser_Actions_#{version.csv.first}_(#{version.csv.second}).dmg"
  name "Browser Actions"
  desc "Shortcuts for your browser"
  homepage "https://actions.work/browser-actions/"

  livecheck do
    url "https://downloads.actions.work/browser-actions/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Browser Actions.app"

  zap trash: [
    "~/Library/Application Scripts/co.zottmann.BrowserActions",
    "~/Library/HTTPStorages/co.zottmann.BrowserActions",
    "~/Library/Preferences/co.zottmann.BrowserActions.plist",
  ]
end
