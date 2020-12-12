cask "batchmod" do
  version "1.7b5"
  sha256 "f5ebd90370e35a20b1ddf9a883ca8585f6eb732cfc658c5bdfa1b5e21914ee20"

  url "https://www.lagentesoft.com/resources/batchmod_#{version.no_dots}.zip"
  appcast "https://www.macchampion.com/arbysoft/batchmodappcast.xml"
  name "BatChmod"
  desc "Utility for manipulating file and folder privileges"
  homepage "https://www.lagentesoft.com/batchmod/"

  app "BatChmod.app"
end
