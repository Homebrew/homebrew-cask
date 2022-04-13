cask "mini-vmac" do
  version "36.04"
  sha256 "e8564a9827fe6a616489e29ee89f4bae85d4ecde76ea982e4a86af56b0108662"

  url "https://www.gryphel.com/d/minivmac/minivmac-#{version}/minivmac-#{version}-mc64.bin.tgz"
  name "Mini vMac"
  desc "Allows modern computers to run software made for early Apple computers"
  homepage "https://www.gryphel.com/c/minivmac/"

  livecheck do
    url "https://www.gryphel.com/d/minivmac/md5.txt"
    regex(/minivmac[._-]v?(\d+(?:\.\d+)+)[._-]mc64[._-]bin\.t/i)
  end

  app "Mini vMac.app"
end
