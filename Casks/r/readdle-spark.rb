cask "readdle-spark" do
  version "3.27.9.129753"
  sha256 "ec94a61801777ceab6fd0d2e329264b486a6280ea9a4e0b33e8dac4ab4f320ee"

  url "https://downloads.sparkmailapp.com/Spark#{version.major}/mac/dist/#{version}/Spark.zip"
  name "Spark"
  desc "Email client"
  homepage "https://sparkmailapp.com/"

  livecheck do
    url "https://downloads.sparkmailapp.com/Spark#{version.major}/mac/dist/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:version)
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Spark Desktop.app"

  zap trash: [
    "~/Library/Application Support/Spark Desktop",
    "~/Library/Caches/com.readdle.SparkDesktop.helper",
    "~/Library/Caches/Spark Desktop",
    "~/Library/Logs/Spark Desktop",
    "~/Library/Preferences/com.readdle.SparkDesktop.plist",
    "~/Library/Saved Application State/com.readdle.SparkDesktop.savedState",
  ]
end
