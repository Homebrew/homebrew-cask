cask "subnetcalc" do
  if MacOS.version <= :el_capitan
    version "1.1"
    sha256 "19157baacac0cede6849356cb305a0ed2e4290e1e9e8ac4b691fd1d7ce1920cf"
  else
    version "2.3"
    sha256 "002706b8412e3a11eceee0ae624147e46ecece4653a90398eb4d5a8be6189559"
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
