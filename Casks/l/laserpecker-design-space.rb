cask "laserpecker-design-space" do
  arch arm: "M1", intel: "Mac"

  version "2.9.0"
  sha256 arm:   "9ac1e62b487388a0b6bd3721b1e86202f555f69cfd2f5bd63ae37d670a5b41aa",
         intel: "c7f436ad205b3b1791b980dc99cfbdd3b80fb1504cb1d1a16aabd6567ea8a783"

  url "https://laserpecker-prod.oss-cn-hongkong.aliyuncs.com/apply/software/pc/LaserPecker-Design-Space-#{arch}-#{version}.dmg",
      verified: "laserpecker-prod.oss-cn-hongkong.aliyuncs.com/"
  name "LaserPecker Design Space"
  desc "Laser engraving and cutting software"
  homepage "https://laserpecker.net/"

  livecheck do
    url "https://laserpecker.net/pages/software-download"
    regex(/href=.*LaserPecker[._-]Design[._-]Space[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "LaserPecker Design Space.app"

  zap trash: [
    "~/Library/Application Support/laserpecker_design_spaces",
    "~/Library/Logs/laserpecker_design_spaces",
    "~/Library/Preferences/com.laserpecker.pc.plist",
  ]
end
