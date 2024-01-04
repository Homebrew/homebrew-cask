cask "mirrorop" do
  version "2.5.4.90"
  sha256 "eb16715e0953956bb9668985366c56bfb1af1619bf34b8184b3e872575146d4a"

  url "https://www.barco.com/services/website/en/TdeFiles/Download?FileNumber=R33050100&TdeType=3&MajorVersion=#{version.major}&MinorVersion=#{version.minor}&PatchVersion=#{version.patch}&BuildVersion=#{version.split(".")[-1]}"
  name "MirrorOp Sender"
  desc "Mirroring software application for wePresent systems"
  homepage "https://www.barco.com/en/product/mirrorop"

  disable! date: "2024-01-04", because: "download artifact behind signed url"

  app "MirrorOp.app"
end
