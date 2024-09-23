cask "smlnj" do
  version "110.99.6"
  sha256 "8dfc474d546b1f7e4e96a7d4fac5be67549427d8e076f21faf62e13f4d7730d3"

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
