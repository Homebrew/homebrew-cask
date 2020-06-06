cask 'bria' do
  version '6.1.1_103836'
  sha256 'e2a0bab2d8d55c787cbc7078208aaadfebd0f04edde51e536b568a2c0f5c4066'

  # counterpath.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/Bria6forMac'
  name 'Bria'
  homepage 'https://www.counterpath.com/bria-solo/'

  app 'Bria.app'
end
