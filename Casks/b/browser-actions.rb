cask "browser-actions" do
  version "2026.1.1,5352"
  sha256 "941da868df6b618b69c42b369eb7bd9d7d3732c6dac687ae9b5ac59bb8c8d48d"

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
