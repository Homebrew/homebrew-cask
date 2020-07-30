cask "smlnj" do
  version "110.98"
  sha256 "cb059e82046fda866af031d1cc39c56a53f951aa7370154a12113c580f44db78"

  # smlnj.cs.uchicago.edu/ was verified as official when first introduced to the cask
  url "http://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-amd64-#{version}.pkg"
  name "Standard ML of New Jersey"
  homepage "https://www.smlnj.org/"

  pkg "smlnj-amd64-#{version}.pkg"

  uninstall pkgutil: "org.smlnj.amd64.pkg"

  caveats do
    path_environment_variable "/usr/local/smlnj/bin"
  end
end
