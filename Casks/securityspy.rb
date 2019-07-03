cask 'securityspy' do
  version '5.0'
  sha256 'fe4fc9dce9d04d30e5dc6e8908c384e3d79c006352860f41741cb6a2c17b14da'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
