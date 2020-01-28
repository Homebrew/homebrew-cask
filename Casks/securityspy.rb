cask 'securityspy' do
  version '5.2.1'
  sha256 'c70f1d3d8b187866d96e087257a84063c0837a61c7d0809931edf0268c1b83c7'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          configuration: version.chomp('.0')
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
