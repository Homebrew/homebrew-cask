cask "aurora-hdr" do
  version "1.0.2,6495"
  sha256 "af6fe2c085ec14bad9370604147050d0f431541de0f9badf11dacf7d56f2e5a3"

  url "https://downloads.skylum.com/aurorahdr/mac/AuroraHDR_Distribution_v#{version.csv.first.dots_to_underscores}_#{version.csv.second}.zip"
  name "Aurora HDR"
  desc "HDR photo editor with filters, batch processing and more"
  homepage "https://skylum.com/aurorahdr"

  livecheck do
    url "http://aurorahdr2019mac.update.skylum.com/"
    strategy :sparkle
  end

  app "Aurora HDR.app"

  uninstall delete: [
    "~/Library/Caches/com.macphun.auroraHDR2019",
    "~/Library/Preferences/com.macphun.auroraHDR2019.plist",
  ]
end
