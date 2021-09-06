cask "subnetcalc" do
  if MacOS.version <= :el_capitan
    version "1.1"
    sha256 "19157baacac0cede6849356cb305a0ed2e4290e1e9e8ac4b691fd1d7ce1920cf"
  else
    version "2.2"
    sha256 "d8e19d83843e179127016c996f99d0b7f812e0e44a90a7efc3033b03979700e1"
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
