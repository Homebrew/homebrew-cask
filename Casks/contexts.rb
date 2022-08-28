cask "contexts" do
  if MacOS.version <= :mojave
    version "3.7.1,371"
    sha256 "de5e4a660cc30276155606b539d1ae58684115a3983d69598f1505fcad499a87"
  else
    version "3.9.0,390"
    sha256 "c86a214d5ee7718453d0fb6442b3ef9a7fc02c5c1582b6d28ef0c2e621a6b6aa"
  end

  url "https://contexts.co/releases/Contexts-#{version.csv.first}.dmg"
  name "Contexts"
  desc "Allows switching between application windows"
  homepage "https://contexts.co/"

  livecheck do
    url "https://contexts.co/appcasts/stable.xml"
    strategy :sparkle do |item|
      match = item.url.match(/Contexts-(\d+(?:\.\d+)+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{item.version}"
    end
  end

  depends_on macos: ">= :catalina"

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
