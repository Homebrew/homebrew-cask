cask 'linphone' do
  version '4.2.1'
  sha256 '55c75b8afd24a253876b7db1e2de71800639cf4492a12519731ed19a1ac83582'

  url "https://www.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  appcast 'https://www.linphone.org/releases/macosx/RELEASE'
  name 'Linphone'
  homepage 'https://www.linphone.org/'

  app 'Linphone.app'
end
