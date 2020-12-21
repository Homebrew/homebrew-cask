cask "qbserve" do
  version "1.87"
  sha256 "839aad3206d0e0a21f158382f274937540a9fd950aaa8474459992bc0306f467"

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast "https://qotoqot.com/qbserve/"
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
