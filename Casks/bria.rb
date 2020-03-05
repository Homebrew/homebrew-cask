cask 'bria' do
  version '6.0.3_102645'
  sha256 'e1acfe6f624f276f318aa77504b3b11192b2c31acf89ed0b16c55618a1710c50'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/Bria6forMac'
  name 'Bria'
  homepage 'https://www.counterpath.com/bria-solo/'

  app 'Bria.app'
end
