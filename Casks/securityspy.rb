cask 'securityspy' do
  version '4.2.4'
  sha256 '9a21f957622a79b8145079383ee8283151a249a57bce89d2da37d4ed137f6a61'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          checkpoint: '1d4929d379e0bae248512f8c90556374fb5a93e37bd558a4762afe60cde3f246'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
