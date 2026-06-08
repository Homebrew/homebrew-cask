cask "laserpecker-design-space" do
  arch arm: "M1", intel: "Mac"

  version "2.12.0"
  sha256 arm:   "0ca33e43ae64baf444146ebe54cf67edce965fff8c177186179037e47fdc8259",
         intel: "154f7074aa61215281cb7d0968b24752ad2d169b74839917aaae23665741bcb8"

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
