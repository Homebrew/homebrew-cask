cask "aurora-hdr" do
  version "1.0.1,6438"
  sha256 "eb95b9959bbdf739e0b0158480f3793b0ee1376fba544ede3734a6cbbcb7bee1"

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
    "~/Library/Preferences/com.macphun.auroraHDR2019.plist",
    "~/Library/Caches/com.macphun.auroraHDR2019",
  ]
end
