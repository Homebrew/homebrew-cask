cask "qview" do
  version "6.0"
  sha256 "f6db392c533c36eac09262b5d6e4224b2c36b9554f69f1195ea21c219c3f2687"

  url "https://github.com/jurplel/qView/releases/download/#{version}/qView-#{version}.dmg"
  name "qView"
  desc "Image viewer"
  homepage "https://github.com/jurplel/qView/"

  app "qView.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.interversehq.qview.sfl2",
    "~/Library/Preferences/com.interversehq.qView.plist",
    "~/Library/Preferences/com.qview.qView.plist",
    "~/Library/Saved Application State/com.interversehq.qView.savedState",
  ]
end
