cask 'smlnj' do
  version '110.97'
  sha256 '200ab32a192a34a24923d1bc61e18365108b9ab83fa0549f495c1621db49a80f'

  # smlnj.cs.uchicago.edu/ was verified as official when first introduced to the cask
  url "http://smlnj.cs.uchicago.edu/dist/working/#{version}/smlnj-amd64-#{version}.pkg"
  name 'Standard ML of New Jersey'
  homepage 'https://www.smlnj.org/'

  pkg "smlnj-amd64-#{version}.pkg"

  uninstall pkgutil: 'org.smlnj.amd64.pkg'

  caveats do
    path_environment_variable '/usr/local/smlnj/bin'
  end
end
