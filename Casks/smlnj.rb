cask "smlnj" do
  version "110.99"
  sha256 "848527f521af31e32f24c462d83bba1d0a5060214eed0fd51077f509ff5bcfe0"

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
