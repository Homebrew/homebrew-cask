cask "metadatics" do
  version "1.6.7,310"
  sha256 :no_check

  url "https://www.markvapps.com/applications/metadatics/metadatics.zip"
  name "Metadatics"
  desc "Advanced Audio Metadata Editor"
  homepage "https://www.markvapps.com/metadatics"

  livecheck do
    url "https://www.markvapps.com/applications/metadatics/metadatics_appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Metadatics.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.markvapps.metadatics.help*#{version.before_comma}",
    "~/Library/Caches/com.markvapps.metadatics",
    "~/Library/HTTPStorages/com.markvapps.metadatics",
    "~/Library/Preferences/com.markvapps.metadatics.plist",
  ]
end
