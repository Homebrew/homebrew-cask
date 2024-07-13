cask "datagraph" do
  version "5.3,66"
  sha256 :no_check

  url "https://www.visualdatatools.com/DataGraph/DataGraph.dmg"
  name "DataGraph"
  desc "Scientific/statistical graphing software"
  homepage "https://www.visualdatatools.com/DataGraph/"

  livecheck do
    url :url
    strategy :extract_plist
  end

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
