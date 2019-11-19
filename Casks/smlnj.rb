cask 'smlnj' do
  version '110.95'
  sha256 '3df3f31f3882ca1ac0755573a649212873ef2b2ec4ccbb939904b59732018976'

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
