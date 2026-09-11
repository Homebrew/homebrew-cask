cask "silhouette-studio" do
  version "5.0.539.001_M6R"
  sha256 "ee60bd3721440873e3c42b1c9873c5a17519122ade0a0a1300fcc3c45064a70d"

  url "https://d62nvtdcnsm38.cloudfront.net/files/softwares/ss/SS_V#{version}.dmg"
  name "Silhouette Studio"
  desc "Design software for Silhouette cutting machines"
  homepage "https://www.silhouetteamerica.com/silhouette-studio"

  livecheck do
    url :homepage, user_agent: :browser
    regex(/SS[._-]V?((?:\d+(?:\.\d+)+)[._-]M6R(?:[._-]\d+)?)\.dmg/i)
  end

  depends_on macos: :monterey

  app "Silhouette Studio.app"

  zap trash: [
    "/Library/Application Support/com.aspexsoftware.Silhouette_Studio*",
    "~/Library/Application Support/com.aspexsoftware.Silhouette_Studio*",
    "~/Library/Preferences/com.aspexsoftware.Silhouette_Studio*",
    "~/Library/Preferences/com.silhouettesoftware*",
    "~/Library/Saved Application State/com.silhouettesoftware.Silhouette-Studio*",
  ]
end
