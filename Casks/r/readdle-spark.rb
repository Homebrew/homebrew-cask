cask "readdle-spark" do
  version "3.10.5.61613"
  sha256 "2671445197d6248d3def5fd82478511f341d3f24eb5dcd18b6104f5d2f286410"

  url "https://downloads.sparkmailapp.com/Spark#{version.major}/mac/dist/#{version}/Spark.zip"
  name "Spark"
  desc "Email client"
  homepage "https://sparkmailapp.com/"

  livecheck do
    url "https://downloads.sparkmailapp.com/Spark#{version.major}/mac/dist/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
