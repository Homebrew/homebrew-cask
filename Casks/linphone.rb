cask 'linphone' do
  version '4.1.1'
  sha256 'b1a5e518c1c564d47f992adadb09ea8cdb51f35e1a0935d4e2060468f893328e'

  url "https://www.linphone.org/releases/macosx/Linphone-#{version}-mac.dmg"
  appcast 'https://www.linphone.org/releases/macosx/',
          checkpoint: '6d4eb104adb18508b1d1362a9bf29330b32abfac0832161ca6d22c71fa5ea757'
  name 'Linphone'
  homepage 'https://www.linphone.org/'

  app 'Linphone.app'
end
