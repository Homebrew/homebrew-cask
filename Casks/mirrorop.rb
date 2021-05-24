cask "mirrorop" do
  version "2.5.3.87"
  sha256 "d505869d9737418f7a39e9b11d8a9934508830866e02746504c36d2612567bc9"

  url "https://www.barco.com/services/website/en/TdeFiles/Download?FileNumber=R33050100&TdeType=3&MajorVersion=#{version.major}&MinorVersion=#{version.minor}&PatchVersion=#{version.patch}&BuildVersion=#{version.split(".")[-1]}"
  name "MirrorOp Sender"
  desc "Mirroring software application for wePresent systems"
  homepage "https://www.barco.com/en/product/mirrorop"

  livecheck do
    url "https://www.barco.com/en/support/software/R33050100"
    strategy :page_match
    regex(/MirrorOp\s*Mac\s*Sender\s*v?(\d+(?:\.\d+)*)/i)
  end

  app "MirrorOp.app"
end
