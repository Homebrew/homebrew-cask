cask "readdle-spark" do
  version "3.30.7.140494"
  sha256 "e2e28217147ff96af7c5d7978fed224131ac5db94bdadbcebd6a0d8b64299a82"

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
  depends_on macos: :big_sur

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
