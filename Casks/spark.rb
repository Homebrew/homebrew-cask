cask "spark" do
  version "3.3.2,501"
  sha256 :no_check

  url "https://www.shadowlab.org/softwares/Spark/Spark.zip"
  name "Spark"
  homepage "https://www.shadowlab.org/softwares/spark.php"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Spark.app"

  zap trash: "~/Library/Application Support/Spark"
end
