cask 'securityspy' do
  version '4.2.5'
  sha256 '476e628ce9348c8f55fe6d0dec83ad03607850f6146dc815be15bcf96093db3e'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          checkpoint: '75ac1c4adf2e9cda71cc18fe8dc2c103c9e48b218e4762eb8e4c84a6516276c0'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
