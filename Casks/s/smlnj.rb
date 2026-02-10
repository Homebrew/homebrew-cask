cask "smlnj" do
  version "110.99.9"
  sha256 "41f011e2950935efb7336d4157acb76efa886cec6c14fb28df82ec0a5b4ac993"

  url "https://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-amd64-#{version}.pkg",
      verified: "smlnj.cs.uchicago.edu/"
  name "Standard ML of New Jersey"
  desc "Compiler for the Standard ML '97 programming language"
  homepage "https://www.smlnj.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/smlnj-amd64-(\d+(?:\.\d+)*)\.pkg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  pkg "smlnj-amd64-#{version}.pkg"

  uninstall pkgutil: "org.smlnj.amd64.pkg"

  zap delete: "/usr/local/smlnj"

  caveats do
    path_environment_variable "/usr/local/smlnj/bin"
  end
end
