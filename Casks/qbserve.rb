cask "qbserve" do
  version "1.86"
  sha256 "734ec7d59ba054b2e1cfbf32ca90ea9a7f4dd442fc7a5cd10a2afaa8426b4262"

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast "https://qotoqot.com/qbserve/app/appcast.xml"
  name "Qbserve"
  homepage "https://qotoqot.com/qbserve/"

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
