cask 'smlnj' do
  version '110.94'
  sha256 '8af582d4fc2e1bb425dd4925696d3c56b687baeb50ffc16362a1a46fa495f27b'

  # smlnj.cs.uchicago.edu was verified as official when first introduced to the cask
  url "http://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-amd64-#{version}.pkg"
  name 'Standard ML of New Jersey'
  homepage 'https://www.smlnj.org/'

  pkg "smlnj-amd64-#{version}.pkg"

  uninstall pkgutil: 'org.smlnj.amd64.pkg'

  caveats do
    path_environment_variable '/usr/local/smlnj/bin'
  end
end
