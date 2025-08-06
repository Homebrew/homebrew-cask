cask "recents" do
  version "2.5.0"
  sha256 "ff0bd3695129aa664fb7db546d2e1965ce28c4a805c80c2cc059effc5a323bec"

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
