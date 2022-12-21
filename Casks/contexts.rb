cask "contexts" do
  on_mojave :or_older do
    version "3.7.1"
    sha256 "de5e4a660cc30276155606b539d1ae58684115a3983d69598f1505fcad499a87"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "3.8.1"
    sha256 "f4ca05c6abb14f6193b158645d74ca9d2672aabba7e07cc1c6cc3af18aa44907"

    livecheck do
      url "https://contexts.co/appcasts/stable.xml"
      strategy :sparkle do |item|
        item.version.chars.join(".")
      end
    end

    depends_on macos: ">= :catalina"
  end

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  name "Contexts"
  desc "Allows switching between application windows"
  homepage "https://contexts.co/"

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
