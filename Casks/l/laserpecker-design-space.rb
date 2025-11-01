# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "laserpecker-design-space" do
  version "2.9.0"
  sha256 "9ac1e62b487388a0b6bd3721b1e86202f555f69cfd2f5bd63ae37d670a5b41aa"

  url "https://laserpecker-prod.oss-cn-hongkong.aliyuncs.com/apply/software/pc/LaserPecker-Design-Space-M1-#{version}.dmg",
      verified: "laserpecker-prod.oss-cn-hongkong.aliyuncs.com/"
  name "LaserPecker Design Space"
  desc "Laser engraving and cutting software"
  homepage "https://laserpecker.net/"

  livecheck do
    url "https://laserpecker.net/pages/software-download"
    regex(/LaserPecker-Design-Space-M1-(\d+(?:\.\d+)+)\.dmg/i)
  end

  # depends_on macos: ""

  app "LaserPecker Design Space.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
