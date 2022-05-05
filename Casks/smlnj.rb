cask "smlnj" do
  version "110.99.2"
  sha256 "cc6135cc38cff836de8ffdb3161af5089087c7b113262830bac4cc15178b927a"

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

  caveats do
    path_environment_variable "/usr/local/smlnj/bin"
  end
end
