cask "spark-ar-studio" do
  version "187"
  sha256 :no_check

  url "https://www.facebook.com/sparkarmacos/download/"
  name "Spark AR Studio"
  desc "Create and share augmented reality experiences using the Facebook family of apps"
  homepage "https://sparkar.facebook.com/ar-studio/"

  livecheck do
    url :url
    regex(/SparkARStudio[._-]?v?(\d+)\.dmg/i)
    strategy :header_match
  end

  app "Meta Spark Studio.app"

  zap trash: [
    "~/Library/Caches/com.facebook.arstudio.skylight",
    "~/Library/Preferences/com.facebook.arstudio.skylight.plist",
    "~/Library/Saved Application State/com.facebook.arstudio.skylight.savedState",
  ]
end
