cask "knock-app" do
  version "2.2.1"
  sha256 :no_check

  url "https://knock-updates.s3.amazonaws.com/Knock.zip",
      verified: "knock-updates.s3.amazonaws.com/"
  name "Knock"
  desc "Unlock with AppleWatch"
  homepage "http://www.knocktounlock.com/"

  deprecate! date: "2025-03-31", because: :unmaintained

  app "Knock.app"

  zap trash: [
        "~/Library/Caches/com.crashlytics.data/com.knock.mac",
        "~/Library/Caches/com.knock.mac",
        "~/Library/Logs/Knock",
        "~/Library/Preferences/com.knock.mac.plist",
      ],
      rmdir: "~/Library/Caches/com.crashlytics.data"

  caveats do
    requires_rosetta
  end
end
