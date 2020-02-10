cask 'smlnj' do
  version '110.96'
  sha256 '41e0cf5fff767ee2455f8ff318aad6b75d3821f8bb8d3a21de0a2a9016273716'

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
