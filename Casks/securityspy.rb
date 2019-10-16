cask 'securityspy' do
  version '5.1.0'
  sha256 '11fdcd72599f7deb49ef1e6d9273a96b313f83e6448418d942287e3d7b895905'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
