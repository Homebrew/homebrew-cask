cask "subnetcalc" do
  if MacOS.version <= :el_capitan
    version "1.1"
    sha256 "19157baacac0cede6849356cb305a0ed2e4290e1e9e8ac4b691fd1d7ce1920cf"
  else
    version "2.4"
    sha256 "a47dd9a8a1ca21cfdba695d4eee95e13061c5c1f522f7c8c5114a5c6f02014cc"
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
