cask "smlnj" do
  version "110.99.6.1"
  sha256 "f3ea9e876934c29b62a1880170f64fb2cf7adaf47ad77968a9d463be41f3e546"

  url "http://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-amd64-#{version}.pkg",
      verified: "smlnj.cs.uchicago.edu/"
  name "Standard ML of New Jersey"
  desc "Compiler for the Standard ML '97 programming language"
  homepage "https://www.smlnj.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/smlnj-amd64-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "smlnj-amd64-#{version}.pkg"

  uninstall pkgutil: "org.smlnj.amd64.pkg"

  zap delete: "/usr/local/smlnj"

  caveats do
    path_environment_variable "/usr/local/smlnj/bin"
  end
end
