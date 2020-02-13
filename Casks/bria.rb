cask 'bria' do
  version '6.0.3_102645'
  sha256 '9730d408fabecc1cfb6e525d64973ea1cb6b7819e7f7f22863740557a50663a6'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/Bria6forMac'
  name 'Bria'
  homepage 'https://www.counterpath.com/bria-solo/'

  app 'Bria.app'
end
