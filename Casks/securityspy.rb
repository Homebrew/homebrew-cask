cask 'securityspy' do
  version '4.2.11'
  sha256 '50cb53ff373593ac141b406f0c5defc13c5b7dfc2dc70aed2e8be9bdf7e5f7bf'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
