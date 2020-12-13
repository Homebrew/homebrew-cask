cask "smlnj" do
  version "110.98.1"
  sha256 "d48372aa13fa2e5ce0979f8cf7964252468cee4748ca9f2111747b200cece4ea"

  url "http://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-amd64-#{version}.pkg",
      verified: "smlnj.cs.uchicago.edu/"
  name "Standard ML of New Jersey"
  homepage "https://www.smlnj.org/"

  pkg "smlnj-amd64-#{version}.pkg"

  uninstall pkgutil: "org.smlnj.amd64.pkg"

  caveats do
    path_environment_variable "/usr/local/smlnj/bin"
  end
end
