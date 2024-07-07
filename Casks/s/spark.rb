cask "spark" do
  version "3.3.2"
  sha256 :no_check

  url "https://www.shadowlab.org/softwares/Spark/Spark.zip"
  name "Spark"
  desc "Shortcut manager"
  homepage "https://www.shadowlab.org/softwares/spark.php"

  livecheck do
    url :homepage
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Spark.app"

  zap trash: "~/Library/Application Support/Spark"
end
