cask :v1 => 'smlnj' do
  version '110.78'
  sha256 'a83c33b177c5e1700ebb1bd7026a1d1a3a4515d6ce6ce1f16ed6cb6fa544b2e9'

  # uchicago.edu is the official download host per the vendor homepage
  url "http://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-x86-#{version}.pkg"
  name 'Standard ML of New Jersey'
  homepage 'http://www.smlnj.org/'
  license :oss

  pkg "smlnj-x86-#{version}.pkg"

  uninstall :pkgutil => 'org.smlnj.x86.pkg'
end
