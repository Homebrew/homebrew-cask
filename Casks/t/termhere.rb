cask "termhere" do
  version "1.2.1"
  sha256 "8311c29b09f982ce829d5733865c715f4f457d0a46dcab2beb18462a73a37b9d"

  url "https://github.com/hbang/TermHere/releases/download/#{version}/TermHere.#{version}.dmg",
      verified: "github.com/hbang/TermHere/"
  name "TermHere"
  desc "Finder extension for opening a terminal from the current directory"
  homepage "https://hbang.ws/apps/termhere/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "TermHere.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/TermHere Finder Extension*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ws.hbang.termhere.sfl*",
    "~/Library/Caches/ws.hbang.TermHere",
    "~/Library/Containers/ws.hbang.TermHere.TermHere-Finder-Extension",
    "~/Library/Cookies/ws.hbang.TermHere.binarycookies",
    "~/Library/Group Containers/*.group.ws.hbang.TermHere",
    "~/Library/Logs/DiagnosticReports/TermHere Finder Extension*",
    "~/Library/Preferences/ws.hbang.TermHere.plist",
  ]
end
