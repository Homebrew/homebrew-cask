cask 'securityspy' do
  version '5.0'
  sha256 '46fe279bb905d75aa8f8e9fd533abb722cdaf5460618066b533382c64fa842c8'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
