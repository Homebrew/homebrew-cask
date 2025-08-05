cask "qbserve" do
  version "1.9"
  sha256 "f21cd5eda08757e9e94ca18cc36af634e0f42dae4f99dfb4f426623b0c4579b4"

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  name "Qbserve"
  desc "Automatic time tracker"
  homepage "https://qotoqot.com/qbserve/"

  livecheck do
    url "https://qotoqot.com/qbserve/app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Qbserve.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qotoqot.qbserve.sfl*",
    "~/Library/Application Support/Qbserve",
    "~/Library/Caches/com.QotoQot.Qbserve",
    "~/Library/Containers/com.QotoQot.QbserveLogin",
    "~/Library/Preferences/com.qotoqot.qbserve.plist",
  ]
end
