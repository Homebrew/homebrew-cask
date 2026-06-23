cask "laserpecker-design-space" do
  arch arm: "M1", intel: "Mac"

  version "2.12.1"
  sha256 arm:   "1493e198c3c397e5e7d712441f9c89e3bd8a9fafe38fa50df2abdc771cf3b69c",
         intel: "fec12d652fea335ead976c9c78da91c05b8316399a7fe1014195c66a72ef510a"

  url "https://laserpecker-prod.oss-cn-hongkong.aliyuncs.com/apply/software/pc/LaserPecker-Design-Space-#{arch}-#{version}.dmg",
      verified: "laserpecker-prod.oss-cn-hongkong.aliyuncs.com/"
  name "LaserPecker Design Space"
  desc "Laser engraving and cutting software"
  homepage "https://laserpecker.net/"

  livecheck do
    url "https://www.laserpecker.net/pages/software"
    regex(/LaserPecker[._-]Design[._-]Space[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :big_sur

  app "LaserPecker Design Space.app"

  zap trash: [
    "~/Library/Application Support/laserpecker_design_spaces",
    "~/Library/Logs/laserpecker_design_spaces",
    "~/Library/Preferences/com.laserpecker.pc.plist",
  ]
end
