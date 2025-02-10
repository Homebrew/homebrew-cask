cask "ankerwork" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4"
  sha256 :no_check

  url "https://ankerwork.s3.amazonaws.com/electron/AnkerWork-Setup-#{arch}.dmg",
      verified: "ankerwork.s3.amazonaws.com/electron/"
  name "AnkerWork"
  desc "Webcam & audio device software"
  homepage "https://us.ankerwork.com/pages/download-software"

  livecheck do
    url :homepage
    regex(/For\s+Mac.*?>\s*V?(\d+(?:\.\d+)+)\s*</im)
  end

  depends_on macos: ">= :mojave"

  app "AnkerWork.app"

  zap trash: [
    "~/Library/Application Support/AnkerWork",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.anker.pcankerwork.sfl*",
    "~/Library/Logs/AnkerWork",
    "~/Library/Preferences/com.anker.pcankerwork.plist",
    "~/Library/Saved Application State/com.anker.pcankerwork.savedState",
  ]
end
