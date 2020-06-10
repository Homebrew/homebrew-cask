cask 'securityspy' do
  version '5.2.3'
  sha256 'd67cf13d40cc1e5011c2170df64b918ce75d96f613852bd84435c30372c11cbd'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          configuration: version.chomp('.0')
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
