cask "invisor-lite" do
  version "3.27"
  sha256 "25675d8f42ff47b5cb8df461b88a8f1c06d873dc0efeff43de64ba6a2f7fb787"

  url "https://www.invisorapp.com/download/InvisorLite-#{version}.dmg"
  name "Invisor Lite"
  desc "Media file inspector"
  homepage "https://www.invisorapp.com/"

  livecheck do
    url "https://www.invisorapp.com/appcast_lite.xml"
    strategy :sparkle, &:short_version
  end

  app "Invisor Lite.app"

  zap trash: [
    "~/Library/Preferences/com.pozdeev.invisorfree.plist",
    "~/Library/Saved Application State/com.pozdeev.invisorfree.savedState",
  ]
end
