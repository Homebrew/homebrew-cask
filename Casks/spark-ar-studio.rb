cask "spark-ar-studio" do
  version "102.0"
  sha256 :no_check

  url "https://www.facebook.com/sparkarmacos/download/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.facebook.com/sparkarmacos/download/",
          must_contain: version.major
  name "Spark AR Studio"
  desc "Create and share augmented reality experiences using the Facebook family of apps"
  homepage "https://sparkar.facebook.com/ar-studio/"

  app "Spark AR Studio.app"

  zap trash: [
    "~/Library/Caches/com.facebook.arstudio.skylight",
    "~/Library/Preferences/com.facebook.arstudio.skylight.plist",
    "~/Library/Saved Application State/com.facebook.arstudio.skylight.savedState",
  ]
end
