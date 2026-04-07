cask "rayon" do
  arch arm: "arm64", intel: "x64"

  version "2.12.0"
  sha256 arm:   "24986a3807027817ed1c214c1283b6f68dea68ff156150eb8ae6ddb00cce8cc0",
         intel: "77fe67c5fb0ff91e393145bbe035875c16c2fd20452dc407afded6db37d92df8"

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
  depends_on macos: ">= :big_sur"

  app "Rayon.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.rayon.sfl*",
    "~/Library/Application Support/Rayon",
    "~/Library/Preferences/com.electron.rayon.plist",
  ]
end
