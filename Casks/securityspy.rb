cask 'securityspy' do
  version '4.2.6'
  sha256 '97b79af1a78bcf00f828806494c40c4dc782e524888b2ff9dd379f324088bf97'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
