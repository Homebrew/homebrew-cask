cask "colortester" do
  version "1.0"
  sha256 :no_check

  url "https://alfasado.net/download/ColorTester_Mac.zip"
  name "ColorTester"
  desc "Colour accessibility and contrast tester"
  homepage "https://alfasado.net/apps/colortester.html"

  disable! date: "2024-07-09", because: "is 32-bit only"

  app "ColorTester/ColorTester.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.alfasado.colortester.sfl*",
    "~/Library/Preferences/com.alfasado.colortester",
    "~/Library/Preferences/com.alfasado.colortester.plist",
  ]
end
