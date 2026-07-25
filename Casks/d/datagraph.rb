cask "datagraph" do
  version "5.5"
  sha256 :no_check

  url "https://www.visualdatatools.com/DataGraph/DataGraph.dmg"
  name "DataGraph"
  desc "Scientific/statistical graphing software"
  homepage "https://www.visualdatatools.com/DataGraph/"

  livecheck do
    url "https://community.visualdatatools.com/datagraph/versions/"
    regex(/href=["']?[^"' >]*?(?:datagraph|version)[._-]v?(\d+(?:[.-]\d+)+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("-", ".") }
    end
  end

  depends_on :macos

  app "DataGraph.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.visualdatatools.datagraph.sfl*",
    "~/Library/Application Support/com.visualdatatools.datagraph",
    "~/Library/Application Support/DataGraph",
    "~/Library/Caches/com.visualdatatools.datagraph",
    "~/Library/HTTPStorages/com.visualdatatools.datagraph",
    "~/Library/Preferences/com.visualdatatools.datagraph.plist",
    "~/Library/Saved Application State/com.visualdatatools.datagraph.savedState",
  ]
end
