cask 'smlnj' do
  version '110.94'
  sha256 '07d4b3b6d36e387bc1fa1e1a6732e3ba947217c91199170e2562e441d7a09651'

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
