cask "readdle-spark" do
  version "3.32.2.141405"
  sha256 "ddb725fdbc568c2d8161ce6c2f94bc1e5125f0b0103d059328eb744a3c7d656b"

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
  depends_on macos: :monterey

  app "Spark Desktop.app"

  uninstall quit: "com.readdle.SparkDesktop"

  zap trash: [
    "~/Library/Application Scripts/com.readdle.SparkDesktop.share",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.readdle.sparkdesktop.sfl*",
    "~/Library/Application Support/com.readdle.SparkDesktop.helper",
    "~/Library/Application Support/Spark Desktop",
    "~/Library/Caches/com.readdle.SparkDesktop.helper",
    "~/Library/Caches/Spark Desktop",
    "~/Library/Containers/com.readdle.SparkDesktop.share",
    "~/Library/HTTPStorages/com.readdle.SparkDesktop*",
    "~/Library/Logs/Spark Desktop",
    "~/Library/Preferences/com.readdle.SparkDesktop.helper.plist",
    "~/Library/Preferences/com.readdle.SparkDesktop.plist",
    "~/Library/Saved Application State/com.readdle.SparkDesktop.savedState",
  ]
end
