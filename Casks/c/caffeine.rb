cask "caffeine" do
  version "1.4.2"
  sha256 :no_check

  url "https://www.caffeine-app.net/download/sonoma/"
  name "Caffeine"
  desc "Utility that prevents the system from going to sleep"
  homepage "https://www.caffeine-app.net/"

  conflicts_with cask: "domzilla-caffeine"

  app "Caffeine.app"

  uninstall quit: "com.intelliscapesolutions.caffeine"

  zap trash: [
    "~/Library/Application Support/com.intelliscapesolutions.caffeine",
    "~/Library/Caches/com.intelliscapesolutions.caffeine",
    "~/Library/HTTPStorages/com.intelliscapesolutions.caffeine.binarycookies",
    "~/Library/Preferences/com.intelliscapesolutions.caffeine.plist",
  ]
end
