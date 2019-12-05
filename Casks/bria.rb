cask 'bria' do
  version '6.0.1_102001'
  sha256 'd327f8518f8c4aa16e67f3c557fe4985c158d448f889f87f0bf1858a6ae95ea0'

  url "https://secure.counterpath.com/Downloads/Bria_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://solo.softphone.com/downloads/bria-for-mac'
  name 'Bria'
  homepage 'https://www.counterpath.com/bria-solo/'

  app 'Bria.app'
end
