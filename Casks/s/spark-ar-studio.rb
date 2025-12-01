cask "spark-ar-studio" do
  version "187"
  sha256 :no_check

  url "https://www.facebook.com/sparkarmacos/download/"
  name "Spark AR Studio"
  desc "Create and share augmented reality experiences using the Facebook family of apps"
  homepage "https://sparkar.facebook.com/ar-studio/"

  # https://spark.meta.com/blog/meta-spark-announcement
  disable! date: "2025-12-01", because: :discontinued

  app "Meta Spark Studio.app"

  zap trash: [
    "~/Library/Caches/com.facebook.arstudio.skylight",
    "~/Library/Preferences/com.facebook.arstudio.skylight.plist",
    "~/Library/Saved Application State/com.facebook.arstudio.skylight.savedState",
  ]
end
