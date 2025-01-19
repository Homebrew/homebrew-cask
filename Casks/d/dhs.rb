cask "dhs" do
  version "1.5.1"
  sha256 "2740a45344a5e61024abd08a37ea08bc79c349c013b651214f202ad401926f69"

  url "https://github.com/objective-see/DylibHijackScanner/releases/download/v1.5.1/DHS_#{version.dots_to_underscores}.zip",
      verified: "github.com/objective-see/"
  name "Dylib Hijack Scanner"
  desc "Scans for dylib hijacking"
  homepage "https://objective-see.org/products/dhs.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "DHS.app"

  zap trash: [
    "~/Library/Preferences/com.objective-see.DHS.plist",
    "~/Library/Saved Application State/com.objective-see.DHS.savedState",
  ]
end
