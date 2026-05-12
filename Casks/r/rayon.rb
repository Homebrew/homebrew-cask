cask "rayon" do
  arch arm: "arm64", intel: "x64"

  version "2.14.0"
  sha256 arm:   "cada8e3e907ab8bbfef9a429cb4046f27b40af00680f1f5e14bc273bd2212493",
         intel: "bff8c95cbad4368d99bc34d03a76ff276b4332f5b164161956184c033329e2dd"

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
