cask "affinity-publisher" do
  version "2.0.4"
  sha256 :no_check

  url "https://store.serif.com/download/668dfb/"
  name "Affinity Publisher #{version.major}"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/170203-latest-affinity-v2-releases-on-each-platform-by-store/"
    regex(/Affinity\s*Publisher\s*\d+\s*\|\s*Affinity\s*Store\s*\|\s*macOS[^|]*\|\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity Publisher #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Affinity Publisher 2",
    "~/Library/Caches/com.seriflabs.affinitypublisher2",
    "~/Library/HTTPStorages/com.seriflabs.affinitypublisher2",
    "~/Library/Preferences/com.seriflabs.affinitypublisher2.plist",
    "~/Library/Saved Application State/com.seriflabs.affinitypublisher2.savedState",
    "~/Library/WebKit/com.seriflabs.affinitypublisher2",
  ]
end
