cask "gitkraken" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "12.6.1"
  sha256 arm:   "f0b3d5d7e2752f70f667ecdd77ff05bc25bc29f6bcd85182dc16371861414a35",
         intel: "87fe1f0cfae906ee52b134ecdab9b1a3429811df5270ce7502edd7b93be9d0be"

  url "https://api.gitkraken.dev/releases/production/darwin/#{arch}/#{version}/GitKraken-v#{version}.zip"
  name "GitKraken"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/"

  livecheck do
    url "https://release.gitkraken.com/darwin#{livecheck_arch}/RELEASES?v=0.0.0&darwin=999"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  conflicts_with cask: "gitkraken-on-premise-serverless"
  depends_on :macos

  app "GitKraken.app"

  uninstall quit: "com.axosoft.gitkraken"

  zap trash: [
    "~/.gitkraken",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axosoft.gitkraken.sfl*",
    "~/Library/Application Support/com.axosoft.gitkraken.ShipIt",
    "~/Library/Application Support/GitKraken",
    "~/Library/Caches/com.axosoft.gitkraken",
    "~/Library/Caches/com.axosoft.gitkraken.ShipIt",
    "~/Library/Caches/GitKraken",
    "~/Library/Cookies/com.axosoft.gitkraken.binarycookies",
    "~/Library/HTTPStorages/com.axosoft.gitkraken",
    "~/Library/Preferences/com.axosoft.gitkraken.helper.plist",
    "~/Library/Preferences/com.axosoft.gitkraken.plist",
    "~/Library/Saved Application State/com.axosoft.gitkraken.savedState",
  ]
end
