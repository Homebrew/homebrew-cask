cask 'securityspy' do
  version '5.2.3'
  sha256 'aa439a699db0252d8e1981396a23500f5ee115a7bd79e2dda6104adef8af33f9'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          must_contain: version.chomp('.0')
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
