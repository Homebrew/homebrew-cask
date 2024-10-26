cask "qbserve" do
  version "1.9"
  sha256 "361ab6eb7f0ac970d2bbc46e3cfeb03de72379b3e78d76f42ea224f3a0c7e8ee"

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
