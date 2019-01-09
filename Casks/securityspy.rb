cask 'securityspy' do
  version '4.2.9'
  sha256 'a9ead279bdc3ec7a4aba9bae454c6b27605959ca174a8c84c1f63f4fa7cab88b'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
