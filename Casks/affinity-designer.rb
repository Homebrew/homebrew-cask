cask "affinity-designer" do
  version "2.1.1"
  sha256 :no_check

  url "https://store.serif.com/download/60f51f/"
  name "Affinity Designer #{version.major}"
  desc "Professional graphic design software"
  homepage "https://affinity.serif.com/en-us/designer/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/170203-latest-affinity-v2-releases-on-each-platform-by-store/"
    regex(/Affinity\s*Designer\s*\d+\s*\|\s*Affinity\s*Store\s*\|\s*macOS[^|]*\|\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity Designer #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Affinity Designer 2",
    "~/Library/Caches/com.seriflabs.affinitydesigner2",
    "~/Library/HTTPStorages/com.seriflabs.affinitydesigner2",
    "~/Library/Preferences/com.seriflabs.affinitydesigner2.plist",
    "~/Library/Saved Application State/com.seriflabs.affinitydesigner2.savedState",
    "~/Library/WebKit/com.seriflabs.affinitydesigner2",
  ]
end
