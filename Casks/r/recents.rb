cask "recents" do
  version "2.4.2"
  sha256 "d8ff2d951d3ed003be07b95b018af3ec51c608edd3b8cc0691579f1b5d93441f"

  url "https://recentsapp.com/releases/Recents_#{version}.dmg"
  name "Recents"
  desc "File launcher"
  homepage "https://recentsapp.com/"

  livecheck do
    url "https://recentsapp.com/releases/recents-appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :ventura"

  app "Recents.app"

  zap trash: [
    "~/Library/Application Support/com.lapier.Recents",
    "~/Library/Caches/com.lapier.Recents",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.lapier.Recents",
    "~/Library/HTTPStorages/com.lapier.Recents",
    "~/Library/Preferences/com.lapier.Recents.plist",
  ]
end
