cask "qbserve" do
  version "1.91"
  sha256 "1e9536d366497f5014aba15e2f3b9fc11b6ab52038a64a4854baa586e1f32a78"

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  name "Qbserve"
  desc "Automatic time tracker"
  homepage "https://qotoqot.com/qbserve/"

  livecheck do
    url "https://qotoqot.com/qbserve/app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Qbserve.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qotoqot.qbserve.sfl*",
    "~/Library/Application Support/Qbserve",
    "~/Library/Caches/com.QotoQot.Qbserve",
    "~/Library/Containers/com.QotoQot.QbserveLogin",
    "~/Library/Preferences/com.qotoqot.qbserve.plist",
  ]
end
