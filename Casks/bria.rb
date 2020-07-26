cask 'bria' do
  version '6.1.2_104265'
  sha256 'fbd1768550a74875d049bbbc535df78fd92d03fbdeb5fb3ca8d80d9cda2f1f5c'

  # counterpath.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/Bria6forMac'
  name 'Bria'
  homepage 'https://www.counterpath.com/bria-solo/'

  app 'Bria.app'
end
