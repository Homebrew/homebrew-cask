cask "batchmod" do
  version "1.7b5,175"
  sha256 "f5ebd90370e35a20b1ddf9a883ca8585f6eb732cfc658c5bdfa1b5e21914ee20"

  url "https://www.lagentesoft.com/resources/batchmod_#{version.csv.first.no_dots}.zip"
  name "BatChmod"
  desc "Utility for manipulating file and folder privileges"
  homepage "https://www.lagentesoft.com/batchmod/"

  livecheck do
    url "https://www.lagentesoft.com/appcasts/batchmod/batchmodappcast.xml"
    strategy :sparkle
  end

  app "BatChmod.app"
end
