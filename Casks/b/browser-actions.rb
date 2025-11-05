cask "browser-actions" do
  version "2025.2.0,5186"
  sha256 "8475815e4c7f5df6891eb124eca74dd777ae7f9d4c7cbd42acc97377e3053752"

  url "https://downloads.actions.work/browser-actions/Browser_Actions_#{version.csv.first}_(#{version.csv.second}).dmg"
  name "Browser Actions"
  desc "Shortcuts for your browser"
  homepage "https://actions.work/browser-actions/"

  livecheck do
    url "https://downloads.actions.work/browser-actions/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Browser Actions.app"

  zap trash: [
    "~/Library/Application Scripts/co.zottmann.BrowserActions",
    "~/Library/HTTPStorages/co.zottmann.BrowserActions",
    "~/Library/Preferences/co.zottmann.BrowserActions.plist",
  ]
end
