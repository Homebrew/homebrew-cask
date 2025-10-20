cask "dhs" do
  version "1.6.0"
  sha256 "3e72ffa559332afb65a83bfbc3b5973064aac9a424dee9cc8bc57e63f86d728f"

  url "https://github.com/objective-see/DylibHijackScanner/releases/download/v#{version}/DHS_#{version}.zip",
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
