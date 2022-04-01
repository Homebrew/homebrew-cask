cask "qbserve" do
  version "1.88"
  sha256 "b5fe36245f5268b8a5a2a68848627fa6fcd9c7a8dbf05502f1eba8c9815d5adc"

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  name "Qbserve"
  homepage "https://qotoqot.com/qbserve/"

  livecheck do
    url :homepage
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
