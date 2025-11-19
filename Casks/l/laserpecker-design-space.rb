cask "laserpecker-design-space" do
  arch arm: "M1", intel: "Mac"

  version "2.10.0"
  sha256 arm:   "8dc17a4b35038d00cd0c30efdaa9b1ca558654538d17527d6e73fd108c426a7d",
         intel: "249058f8b1a57b3ba8e6df182a62518ff8ef4117098c5a50b89b478017643938"

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
