cask "rpn-scientific" do
  version "1.2.5"
  sha256 "96e72827fe0214eb9cc279484a718814b356f2e3e1cd6653314ed213548e83d9"

  url "http://rpnscientific.freehostia.com/RPNScientificV#{version}.dmg"
  name "RPN Scientific Calculator"
  homepage "http://rpnscientific.freehostia.com/"

  livecheck do
    url "http://rpnscientific.freehostia.com/DownloadFile.php"
    strategy :header_match
  end

  app "RPN Scientific.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.industriouse!.rpnscientific.sfl*",
    "~/Library/Caches/com.IndustriousE!.RPNScientific",
    "~/Library/Preferences/com.IndustriousE!.RPNScientific.plist",
    "~/Library/Preferences/com.IndustriousE!.RPNScientificV#{version.major_minor}.data.plist",
  ]
end
