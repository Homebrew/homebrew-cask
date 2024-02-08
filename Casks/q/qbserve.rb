cask "qbserve" do
  version "1.89"
  sha256 "517a975eb915c90df9ac9a49c0e009e0926008890b747ceba20a1476c80e58b1"

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  name "Qbserve"
  desc "Automatic time tracker"
  homepage "https://qotoqot.com/qbserve/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Qbserve[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  auto_updates true

  app "Qbserve.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qotoqot.qbserve.sfl*",
    "~/Library/Application Support/Qbserve",
    "~/Library/Caches/com.QotoQot.Qbserve",
    "~/Library/Containers/com.QotoQot.QbserveLogin",
    "~/Library/Preferences/com.qotoqot.qbserve.plist",
  ]
end
