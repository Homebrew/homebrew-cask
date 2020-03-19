cask 'securityspy' do
  version '5.2.2'
  sha256 '16939f668a9249fc932b86ae6ec922407e8ad31fb21b67d3b97e42f1e11585e4'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          configuration: version.chomp('.0')
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
