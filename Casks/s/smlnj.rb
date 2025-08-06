cask "smlnj" do
  version "110.99.8"
  sha256 "3c8244ae96dde9b4089faa9073c6dd3f1f1cb50b73143d6e20a711ecda286e79"

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
