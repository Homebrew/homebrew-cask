cask "knock" do
  version "2.2.1,98"
  sha256 :no_check

  url "https://knock-updates.s3.amazonaws.com/Knock.zip",
      verified: "knock-updates.s3.amazonaws.com/"
  appcast "https://knock-updates.s3.amazonaws.com/Knock.xml"
  name "Knock"
  homepage "http://www.knocktounlock.com/"

  app "Knock.app"

  zap trash: [
    "~/Library/Preferences/com.knock.mac.plist",
    "~/Library/Logs/Knock",
    "~/Library/Caches/com.knock.mac",
    "~/Library/Caches/com.crashlytics.data/com.knock.mac",
  ],
      rmdir: [
        "~/Library/Caches/com.crashlytics.data",
      ]
end
