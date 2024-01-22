cask "caffeine" do
  version "1.1.3"
  sha256 "240e5ab832a25ed0af43aeffd1d66dc663dfea7c2525d918c214d6107981a03b"

  url "https://github.com/IntelliScape/caffeine/releases/download/#{version}/Caffeine.dmg",
      verified: "github.com/IntelliScape/caffeine/"
  name "Caffeine"
  desc "Utility that prevents the system from going to sleep"
  homepage "https://intelliscapesolutions.com/apps/caffeine"

  conflicts_with cask: "domzilla-caffeine"

  app "Caffeine.app"

  uninstall quit: "com.intelliscapesolutions.caffeine"

  zap trash: [
    "~/Library/Application Support/com.intelliscapesolutions.caffeine",
    "~/Library/Caches/com.intelliscapesolutions.caffeine",
    "~/Library/HTTPStorages/com.intelliscapesolutions.caffeine.binarycookies",
    "~/Library/Preferences/com.intelliscapesolutions.caffeine.plist",
  ]

  caveats do
    requires_rosetta
  end
end
