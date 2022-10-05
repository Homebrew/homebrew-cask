cask "spark-mail" do
  version "3.0.29.37433"
  sha256 "7d12efe925ecdb4736fe6b4f1cae3e9e9b80057ef188b929fc7fc6f4ed116715"

  url "https://downloads.sparkmailapp.com/Spark3/mac/dist/#{version}/Spark.zip"
  name "Spark Mail"
  desc "Spark helps you take your inbox under control"
  homepage "https://sparkmailapp.com/"

  livecheck do
    url "https://downloads.sparkmailapp.com/Spark3/mac/dist/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Spark Desktop.app"

  zap trash: [
    "~/Library/Application Support/Spark Desktop",
    "~/Library/Caches/Spark Desktop",
    "~/Library/Caches/com.readdle.SparkDesktop.helper",
    "~/Library/Logs/Spark Desktop",
    "~/Library/Preferences/com.readdle.SparkDesktop.plist",
    "~/Library/Saved Application State/com.readdle.SparkDesktop.savedState",
  ]
end
