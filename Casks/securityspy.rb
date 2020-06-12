cask 'securityspy' do
  version '5.2.3'
  sha256 '08e8f56040c90f5062156c2f90923eede23c84eeb6f54019d2dfdec25a6cbe7f'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          must_contain: version.chomp('.0')
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
