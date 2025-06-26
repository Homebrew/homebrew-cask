cask "browser-actions" do
  version "2025.1.3,4969"
  sha256 "67d5ace8822653d164bff7552548361323e64091c5665ac37bb1170f3f46c372"

  url "https://downloads.actions.work/browser-actions/Browser_Actions_#{version.csv.first}_(#{version.csv.second}).dmg"
  name "Browser Actions"
  desc "Shortcuts for your browser"
  homepage "https://actions.work/browser-actions/"

  livecheck do
    url "https://downloads.actions.work/browser-actions/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Browser Actions.app"

  zap trash: [
    "~/Library/Application Scripts/co.zottmann.BrowserActions",
    "~/Library/HTTPStorages/co.zottmann.BrowserActions",
    "~/Library/Preferences/co.zottmann.BrowserActions.plist",
  ]
end
