cask "smlnj" do
  version "110.99.1"
  sha256 "ab487fe4e113374dfb4aeead6e806ef776e7316075fae4d01ff122fb07453c72"

  url "http://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-amd64-#{version}.pkg",
      verified: "smlnj.cs.uchicago.edu/"
  name "Standard ML of New Jersey"
  homepage "https://www.smlnj.org/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/smlnj-amd64-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "smlnj-amd64-#{version}.pkg"

  uninstall pkgutil: "org.smlnj.amd64.pkg"

  caveats do
    path_environment_variable "/usr/local/smlnj/bin"
  end
end
