cask "silhouette-studio" do
  version "5.0.080.001_M6R"
  sha256 "1c84d4927f18c17b296bbc47b938e516f0f88136824060bf6a8233e4693d4dae"

  url "https://d62nvtdcnsm38.cloudfront.net/files/softwares/ss/SS_V#{version}.dmg",
      verified: "d62nvtdcnsm38.cloudfront.net/files/softwares/ss/"
  name "Silhouette Studio"
  desc "Design software for Silhouette cutting machines"
  homepage "https://www.silhouetteamerica.com/silhouette-studio"

  livecheck do
    url :homepage
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
