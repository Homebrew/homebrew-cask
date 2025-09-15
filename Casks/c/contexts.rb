cask "contexts" do
  version "3.9.0"
  sha256 "c86a214d5ee7718453d0fb6442b3ef9a7fc02c5c1582b6d28ef0c2e621a6b6aa"

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  name "Contexts"
  desc "Allows switching between application windows"
  homepage "https://contexts.co/"

  livecheck do
    url "https://contexts.co/appcasts/stable.xml"
    strategy :sparkle do |item|
      item.version.chars.join(".")
    end
  end

  auto_updates true

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
