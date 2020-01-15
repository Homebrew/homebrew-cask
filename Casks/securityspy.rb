cask 'securityspy' do
  version '5.2.0'
  sha256 '038ef1d321b4a361ada48bef51c663408c89ce4290ba6f1fdaf1b13a4739b39a'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          configuration: version.chomp('.0')
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
