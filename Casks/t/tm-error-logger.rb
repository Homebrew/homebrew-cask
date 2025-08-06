cask "tm-error-logger" do
  version "8.0.3"
  sha256 :no_check

  url "https://carnationsoftware.com/ftp/TM_Error_Logger_Installer.dmg"
  name "TM Error Logger"
  desc "Time Machine error reporting program"
  homepage "https://carnationsoftware.com/TM_Error_Log_WebPage.html"

  livecheck do
    url "https://carnationsoftware.com/TM_Error_Logger_Versions.html"
    regex(/<p>v?(\d+(?:\.\d+)+)[ "<]/i)
  end

  depends_on macos: ">= :high_sierra"

  app "TM Error Logger.app"

  zap trash: [
    "~/Library/Preferences/com.csw.TMErrorLogger.plist",
    "~/Library/Preferences:Carnation Software Prefs",
    "~/Library/Saved Application State/com.csw.TMErrorLogger.savedState",
  ]
end
