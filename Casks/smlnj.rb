cask 'smlnj' do
  version '110.91'
  sha256 '8476fe570b13f722b9b81182590144ccb770495a5534fa77600a7c592028568a'

  # smlnj.cs.uchicago.edu was verified as official when first introduced to the cask
  url "http://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-x86-#{version}.pkg"
  name 'Standard ML of New Jersey'
  homepage 'https://www.smlnj.org/'

  pkg "smlnj-x86-#{version}.pkg"

  uninstall pkgutil: 'org.smlnj.x86.pkg'

  caveats do
    path_environment_variable '/usr/local/smlnj/bin'
  end
end
