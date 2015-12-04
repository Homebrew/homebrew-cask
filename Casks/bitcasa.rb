cask :v1 => 'bitcasa' do
  version '3.0.18.2'
  sha256 '09fcece3ac576ee9e8157445655e0571ec9b3aee1174ffe22b15852ac7107cde'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://dist.bitcasa.com/update/InstallBitcasa.#{version}.pkg"
  name 'Bitcasa CloudFS'
  homepage 'https://www.bitcasa.com'
  license :gratis

  pkg "InstallBitcasa.#{version}.pkg"

  uninstall :pkgutil => 'com.bitcasa.AutoLaunch|com.bitcasa.Bitcasa'
end
