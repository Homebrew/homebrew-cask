cask 'bria' do
  version '6.1.0_103103'
  sha256 'e9ed4d75d022eda758ca963c4155e80e7d0d6fa5140871baef77289ea7ee7500'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/Bria6forMac'
  name 'Bria'
  homepage 'https://www.counterpath.com/bria-solo/'

  app 'Bria.app'
end
