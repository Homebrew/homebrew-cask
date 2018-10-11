cask 'securityspy' do
  version '4.2.8'
  sha256 'e80cc98a5b571fac36959a39eeddbe71c8d9e1a4dc471152f01744cfe610cb39'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
