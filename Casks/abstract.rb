cask "abstract" do
  version "95.0.1"
  sha256 "9c04345f9e7fdbab6042ea04b80265cfc056b479f5e10cc5d92ececfa0f29e38"

  url "https://downloads.goabstract.com/mac/Abstract-#{version}.dmg"
  appcast "https://www.goabstract.com/release-notes/"
  name "Abstract"
  homepage "https://www.goabstract.com/"

  auto_updates true

  app "Abstract.app"

  zap trash: [
    "~/Library/Application Support/Abstract",
    "~/Library/Caches/com.elasticprojects.abstract-desktop",
    "~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.plist",
    "~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState",
  ]
end
