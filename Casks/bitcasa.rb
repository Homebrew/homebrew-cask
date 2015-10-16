cask :v1 => 'bitcasa' do
  version '2.0.0.3'
  sha256 '3ba706ae71d269a91f33ffdb424d8e52fdb4413129233bd3d7e5fbd1f0f8cd0f'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d1kbf262vwnlmm.cloudfront.net/Bitcasa_#{version}.dmg"
  name 'Bitcasa CloudFS'
  homepage 'https://www.bitcasa.com'
  license :gratis

  pkg 'InstallBitcasa.pkg'

  uninstall :pkgutil => 'com.bitcasa.AutoLaunch|com.bitcasa.Bitcasa'
end
