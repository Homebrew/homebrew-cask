cask "subnetcalc" do
  if MacOS.version <= :el_capitan
    version "1.1"
    sha256 "19157baacac0cede6849356cb305a0ed2e4290e1e9e8ac4b691fd1d7ce1920cf"
  else
    version "2.5"
    sha256 "4a8c6f05cab779340acd566659327506a0793db9c24b55f320dfca4c53bd0f23"
  end

  url "http://subnetcalc.free.fr/download/subnetcalc-#{version}.dmg"
  name "SubnectCalc"
  desc "Tool to calculate IP subnets"
  homepage "http://subnetcalc.free.fr/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/subnetcalc[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "SubnetCalc.app"

  zap trash: [
    "~/Library/Application Scripts/net.mulot.subnetcalc",
    "~/Library/Containers/net.mulot.subnetcalc",
  ]
end
