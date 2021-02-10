cask "qbserve" do
  version "1.87"
  sha256 "0ff31699fd05048ff8cdee780db9ac5080dee86279e866b15f24805207ebc365"

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  name "Qbserve"
  homepage "https://qotoqot.com/qbserve/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Qbserve-(\d+(?:\.\d+)*)\.zip}i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Qbserve.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qotoqot.qbserve.sfl*",
    "~/Library/Application Support/Qbserve",
    "~/Library/Caches/com.QotoQot.Qbserve",
    "~/Library/Containers/com.QotoQot.QbserveLogin",
    "~/Library/Preferences/com.qotoqot.qbserve.plist",
  ]
end
