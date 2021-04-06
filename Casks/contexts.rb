cask "contexts" do
  version "3.8,380"
  sha256 "c9ac6274012a062b679eb614848d2224dff4673fbc3953552debc7f5293f55e4"

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
