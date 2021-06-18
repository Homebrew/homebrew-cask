cask "subnetcalc" do
  if MacOS.version <= :el_capitan
    version "1.1"
    sha256 "19157baacac0cede6849356cb305a0ed2e4290e1e9e8ac4b691fd1d7ce1920cf"
  else
    version "2.0"
    sha256 "e698878755ea95ffb08b3c1e21cfc20c5dc75396c4c3be318ac54b5bfa2a7727"
  end

  url "http://subnetcalc.free.fr/download/subnetcalc-#{version}.dmg"
  name "SubnectCalc"
  desc "Tool to calculate IP subnets"
  homepage "http://subnetcalc.free.fr/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/subnetcalc-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SubnetCalc.app"
end
