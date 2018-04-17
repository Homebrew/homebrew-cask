cask 'securityspy' do
  version '4.2.3'
  sha256 '007fe48dd93b19f48f876917bfea30dad5cdb1b33e688d8f68b583a4cf884ea2'

  url 'https://www.bensoftware.com/securityspy/SecuritySpy.dmg'
  appcast 'https://www.bensoftware.com/securityspy/versionhistory.html',
          checkpoint: 'f40adb3fce8973d1abd4732ff08bf2aa9f534ece58be26c37f1c38fce1bff4f1'
  name 'SecuritySpy'
  homepage 'https://www.bensoftware.com/securityspy/'

  app 'SecuritySpy.app'
end
