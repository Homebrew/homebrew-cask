cask 'securityspy' do
  version '4.2.10'
  sha256 '1b8805efd0f84a37d62891797d1d36b92c1f35429280f24918c502bfe275fd9f'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
