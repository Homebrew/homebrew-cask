cask "subnetcalc" do
  if MacOS.version <= :el_capitan
    version "1.1"
    sha256 "19157baacac0cede6849356cb305a0ed2e4290e1e9e8ac4b691fd1d7ce1920cf"
  else
    version "1.6"
    sha256 "46be97909783cdebca6c0cf22d777fcb31c46c417bd4378ea640882e6e609e2a"
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
