cask "googleappengine" do
  version "1.9.89"
  sha256 "9ed1780e28da381c92ea6667f64a8d6ba715658d3a8957bf5190fb7edbd00ba9"

  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg",
      verified: "storage.googleapis.com/appengine-sdks/"
  name "Google App Engine"
  desc "Cloud computing platform"
  homepage "https://cloud.google.com/appengine/docs/standard/python/download#appengine_sdk/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "GoogleAppEngineLauncher.app"

  zap trash: [
    "~/Library/Application Support/GoogleAppEngineLauncher",
    "~/Library/Preferences/com.google.GoogleAppEngineLauncher.plist",
    "~/Library/Saved Application State/com.google.GoogleAppEngineLauncher.savedState",
  ]
end
