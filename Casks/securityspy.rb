cask 'securityspy' do
  version '5.2.2'
  sha256 '161ba3d0d0c5b45e14c12c759de60fa30c74ac3421c8d0a432e66a338866dfe0'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          configuration: version.chomp('.0')
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
