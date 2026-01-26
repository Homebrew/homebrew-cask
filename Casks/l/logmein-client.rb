cask "logmein-client" do
  version "4.1.8058"
  sha256 :no_check

  url "https://secure.logmein.com/LogMeInClientMac.dmg"
  name "LogMeIn Client"
  desc "Remote access tool"
  homepage "https://www.logmein.com/pro"

  livecheck do
    url "https://secure.logmein.com/versioncheck_logmein_client.ashx?product=LogMeInClient&os=macosx&osversion=167776515"
    regex(/Version:\s+v?(\d+(?:\.\d+)+)/i)
  end

  app "LogMeIn Client.app"

  zap trash: [
    "~/Library/Application Support/LogMeIn Client",
    "~/Library/Caches/com.logmein.ignition",
    "~/Library/HTTPStorages/com.logmein.ignition",
    "~/Library/HTTPStorages/com.logmein.ignition.binarycookies",
    "~/Library/Logs/LogMeIn Client",
    "~/Library/Preferences/com.logmein.ignition.plist",
    "~/Library/Saved Application State/com.logmein.ignition.savedState",
  ]
end
