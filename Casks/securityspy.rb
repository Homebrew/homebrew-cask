cask 'securityspy' do
  version '5.2.1'
  sha256 'aad491e6fc3d8ab65e8574762529be1788df16ae02e5ed0f5612cea0194a091e'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          configuration: version.chomp('.0')
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
