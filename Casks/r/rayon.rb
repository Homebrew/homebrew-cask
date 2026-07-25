cask "rayon" do
  arch arm: "arm64", intel: "x64"

  version "2.17.0"
  sha256 arm:   "bede59483e7dc5c3b51d232b6286a9df37ac8dcef6fd13625ae7604c9f9d6802",
         intel: "c30c659247cfd9825dd8dcb617d27e39008ad45d061dc8569fafea4632f3df2a"

  url "https://rayon-electron.s3.eu-west-3.amazonaws.com/rayon-electron/rayon-electron/rayon-electron-#{version}-#{arch}.dmg",
      verified: "rayon-electron.s3.eu-west-3.amazonaws.com/"
  name "Rayon"
  desc "AI-powered drawing for interior designers and architects"
  homepage "https://www.rayon.design/download"

  livecheck do
    url "https://rayon-electron.s3.eu-west-3.amazonaws.com/rayon-electron/rayon-electron/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Rayon.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.rayon.sfl*",
    "~/Library/Application Support/Rayon",
    "~/Library/Preferences/com.electron.rayon.plist",
  ]
end
