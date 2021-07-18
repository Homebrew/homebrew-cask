cask "mirrorop" do
  version "2.5.4.89"
  sha256 "898376b108bcf517f6fedd34b10aca87a12a9a243584fc982893f550536bf7d0"

  url "https://www.barco.com/services/website/en/TdeFiles/Download?FileNumber=R33050100&TdeType=3&MajorVersion=#{version.major}&MinorVersion=#{version.minor}&PatchVersion=#{version.patch}&BuildVersion=#{version.split(".")[-1]}"
  name "MirrorOp Sender"
  desc "Mirroring software application for wePresent systems"
  homepage "https://www.barco.com/en/product/mirrorop"

  livecheck do
    url "https://www.barco.com/en/support/software/R33050100"
    regex(/MirrorOp\s*Mac\s*Sender\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "MirrorOp.app"
end
