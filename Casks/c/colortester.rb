cask "colortester" do
  version "1.0"
  sha256 :no_check

  url "https://alfasado.net/download/ColorTester_Mac.zip"
  name "ColorTester"
  desc "Color tester"
  homepage "https://alfasado.net/apps/colortester.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "ColorTester/ColorTester.app"

  zap trash: [
    "~/Library/Preferences/com.alfasado.colortester",
    "~/Library/Preferences/com.alfasado.colortester.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.alfasado.colortester.sfl*",
  ]
end
