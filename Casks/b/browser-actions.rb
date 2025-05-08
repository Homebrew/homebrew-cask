cask "browser-actions" do
  version "2025.1.2,4854"
  sha256 "a6beb50685323660244b292321ccdb3e29b91be7f3e464f3abb153a7a1aaf10d"

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
