cask "laserpecker-design-space" do
  arch arm: "M1", intel: "Mac"

  version "2.11.0"
  sha256 arm:   "3d09f0377ea4ee79a995feaa97f0ebec6e020e3ae5cc51f51bf2d540206f6fca",
         intel: "65830a128fac9d500571550874f16386f5f7ff0517c1b11fc81a2e171a9bba64"

  url "https://laserpecker-prod.oss-cn-hongkong.aliyuncs.com/apply/software/pc/LaserPecker-Design-Space-#{arch}-#{version}.dmg",
      verified: "laserpecker-prod.oss-cn-hongkong.aliyuncs.com/"
  name "LaserPecker Design Space"
  desc "Laser engraving and cutting software"
  homepage "https://laserpecker.net/"

  livecheck do
    url "https://www.laserpecker.net/pages/software"
    regex(/LaserPecker[._-]Design[._-]Space[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "LaserPecker Design Space.app"

  zap trash: [
    "~/Library/Application Support/laserpecker_design_spaces",
    "~/Library/Logs/laserpecker_design_spaces",
    "~/Library/Preferences/com.laserpecker.pc.plist",
  ]
end
