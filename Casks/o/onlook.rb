cask "onlook" do
  arch arm: "arm64", intel: "x64"

  version "0.2.31"
  sha256 arm:   "43ca11e2fdb787845e81e84cec881febc4d4956b5610e1660d53905d70e0ab14",
         intel: "fff86cb2c4e294677fda13d846497291e41d885c9e9803c0d31bbf1a4b144a71"

  url "https://github.com/onlook-dev/onlook/releases/download/v#{version}/Onlook-#{arch}.dmg",
      verified: "github.com/onlook-dev/onlook/"
  name "Onlook"
  desc "Open-source visual editor for React apps"
  homepage "https://onlook.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Onlook.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.onlook.studio.sfl*",
    "~/Library/Application Support/Onlook",
    "~/Library/Logs/Onlook",
    "~/Library/Preferences/dev.onlook.studio.plist",
  ]
end
