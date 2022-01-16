cask "spark-ar-studio" do
  version "129"
  sha256 :no_check

  url "https://www.facebook.com/sparkarmacos/download/"
  name "Spark AR Studio"
  desc "Create and share augmented reality experiences using the Facebook family of apps"
  homepage "https://sparkar.facebook.com/ar-studio/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      headers["location"][%r{/SparkARStudio[._-]?v?(\d+)\.dmg}i, 1]
    end
  end

  app "Spark AR Studio.app"

  zap trash: [
    "~/Library/Caches/com.facebook.arstudio.skylight",
    "~/Library/Preferences/com.facebook.arstudio.skylight.plist",
    "~/Library/Saved Application State/com.facebook.arstudio.skylight.savedState",
  ]
end
