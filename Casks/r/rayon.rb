cask "rayon" do
  arch arm: "arm64", intel: "x64"

  version "2.15.0"
  sha256 arm:   "3265481422830d11a44b4ecd8b22e48edeb715667190741083e043836185e6db",
         intel: "66968f4ec4636457a5359aaef28f6f0214ae2fdb2b0b0f1077b16f54f4c19d40"

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
