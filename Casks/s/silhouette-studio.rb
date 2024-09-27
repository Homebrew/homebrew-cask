cask "silhouette-studio" do
  version "4.5.812.001_M6R_1"
  sha256 "235c57478a34c59fa2147d670a52bad8dd22739d19e0a5e0b90057375888c1e9"

  url "https://d62nvtdcnsm38.cloudfront.net/files/softwares/ss/SS_V#{version}.dmg",
      verified: "d62nvtdcnsm38.cloudfront.net/files/softwares/ss/"
  name "Silhouette Studio"
  desc "Design software for Silhouette cutting machines"
  homepage "https://www.silhouetteamerica.com/silhouette-studio"

  livecheck do
    url "https://www.silhouetteamerica.com/software/legacy/id/3"
    regex(/SS[._-]V?((?:\d+(?:\.\d+)+)[._-]M6R(?:[._-]\d+)?)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "Silhouette Studio.app"

  zap trash: [
    "/Library/Application Support/com.aspexsoftware.Silhouette_Studio*",
    "~/Library/Application Support/com.aspexsoftware.Silhouette_Studio*",
    "~/Library/Preferences/com.aspexsoftware.Silhouette_Studio*",
    "~/Library/Preferences/com.silhouettesoftware*",
    "~/Library/Saved Application State/com.silhouettesoftware.Silhouette-Studio*",
  ]

  caveats do
    requires_rosetta
  end
end
