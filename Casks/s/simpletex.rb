cask "simpletex" do
  arch arm: "arm", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://simpletex.cn/download_mac_#{arch}_url"
  name "simpletex"
  desc "Formula snipping and recognition app"
  homepage "https://simpletex.cn/"

  app "SimpleTex.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.spt.simpletex.sfl*",
    "~/Library/Application Support/SimpleTex",
    "~/Library/Preferences/com.spt.SimpleTex.plist",
    "~/Library/Saved Application State/com.spt.SimpleTex.savedState",
  ]
end
