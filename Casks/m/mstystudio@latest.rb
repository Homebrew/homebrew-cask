cask "mstystudio@latest" do
  arch arm: "arm64", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://next-assets.msty.studio/app/latest/mac/MstyStudio_#{arch}.dmg",
      verified: "msty.studio/"
  name "Msty Studio"
  desc "Next-Generation Privacy-first AI platform with local and online models"
  homepage "https://msty.ai/"

  depends_on macos: ">= :monterey"

  app "MstyStudio.app"

  uninstall quit: "com.MstyStudio.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/MstyStudio_*.plist",
    "~/Library/Application Support/MstyStudio",
    "~/Library/Logs/MstyStudio",
    "~/Library/Preferences/MstyStudio.plist",
    "~/Library/Saved Application State/com.MstyStudio.app.savedState",
  ]
end
