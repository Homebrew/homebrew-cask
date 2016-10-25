cask 'cryptomator' do
  version '1.2.0'
  sha256 'fa743d7520467f6213e47a6fc058bb7ac7d28f8a3742d49f5bb01677b23df22f'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org'

  app 'Cryptomator.app'
end
