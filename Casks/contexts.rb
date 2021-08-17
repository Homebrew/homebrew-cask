cask "contexts" do
  version "3.8.1,381"
  sha256 "f4ca05c6abb14f6193b158645d74ca9d2672aabba7e07cc1c6cc3af18aa44907"

  url "https://contexts.co/releases/Contexts-#{version.before_comma}.dmg"
  name "Contexts"
  desc "Allows switching between application windows"
  homepage "https://contexts.co/"

  livecheck do
    url "https://contexts.co/appcasts/stable.xml"
    strategy :sparkle
  end

  app "Contexts.app"

  uninstall quit: "com.contextsformac.Contexts"

  zap trash: [
    "~/Library/Application Support/.com.contextsformac.Contexts.plist",
    "~/Library/Application Support/com.contextsformac.Contexts",
    "~/Library/Caches/com.contextsformac.Contexts",
    "~/Library/Logs/Contexts",
    "~/Library/Preferences/com.contextsformac.Contexts.plist",
  ]
end
