cask "pomotodo" do
  version "3.4.2,1508736942"
  sha256 "7726496a48eeb2901c9762de2a2df743b2010e7ad0b6ccd2cab5a4f49a496f93"

  url "https://cdn.hackplan.com/theair/#{version.csv.second}/Pomotodo.#{version.csv.first}.dmg",
      verified: "cdn.hackplan.com/theair/"
  name "Pomododo"
  desc "Time management app for creators"
  homepage "https://pomotodo.com/"

  disable! date: "2024-01-05", because: :no_longer_available

  app "Pomotodo.app"

  zap trash: [
    "~/Library/Application Scripts/com.pomotodo.PomotodoMacHelper",
    "~/Library/Caches/com.pomotodo.PomotodoMac",
    "~/Library/Containers/com.pomotodo.PomotodoMacHelper",
    "~/Library/Cookies/com.pomotodo.PomotodoMac.binarycookies",
    "~/Library/Preferences/com.pomotodo.PomotodoMac.plist",
    "~/Library/WebKit/com.pomotodo.PomotodoMac",
  ]
end
