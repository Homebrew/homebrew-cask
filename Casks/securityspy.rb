cask 'securityspy' do
  version '5.0.1'
  sha256 '5f0070a56ff6502dc86de9f991c4fbf3f74ff830182eb2ec0d4b2de127fc0134'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  depends_on macos: '>= :high_sierra'

  app 'SecuritySpy.app'
end
