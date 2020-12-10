cask "colortester" do
  version "1.0"
  sha256 :no_check

  url "http://www.alfasado.co.jp/download/ColorTester_Mac.zip",
      verified: "alfasado.co.jp/"
  name "ColorTester"
  homepage "https://alfasado.net/apps/colortester.html"

  app "ColorTester/ColorTester.app"

  zap trash: [
    "~/Library/Preferences/com.alfasado.colortester",
    "~/Library/Preferences/com.alfasado.colortester.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.alfasado.colortester.sfl*",
  ]
end
