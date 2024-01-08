cask "affinity-photo" do
  version "2.3.1"
  sha256 :no_check

  url "https://store.serif.com/download/89007d/"
  name "Affinity Photo #{version.major}"
  desc "Professional image editing software"
  homepage "https://affinity.serif.com/en-us/photo/"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity Photo #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Affinity Photo 2",
    "~/Library/Caches/com.seriflabs.affinityphoto2",
    "~/Library/HTTPStorages/com.seriflabs.affinityphoto2",
    "~/Library/Preferences/com.seriflabs.affinityphoto2.plist",
    "~/Library/Saved Application State/com.seriflabs.affinityphoto2.savedState",
    "~/Library/WebKit/com.seriflabs.affinityphoto2",
  ]
end
