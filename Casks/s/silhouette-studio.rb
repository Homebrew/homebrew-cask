cask "silhouette-studio" do
  version "5.0.523.001_M6R"
  sha256 "dad85ff9c3240dedd2e534749bdfb9a6300873c9aeedd3472d809df56000bd2e"

  url "https://d62nvtdcnsm38.cloudfront.net/files/softwares/ss/SS_V#{version}.dmg",
      verified: "d62nvtdcnsm38.cloudfront.net/files/softwares/ss/"
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
