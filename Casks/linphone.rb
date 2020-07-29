cask 'linphone' do
  version '4.2.0'
  sha256 'ff8514db10509c5b83c7ce5a857daa0492bbfad00322f424564aaf5b42c88f6d'

  url "https://www.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  appcast 'https://www.linphone.org/releases/macosx/RELEASE'
  name 'Linphone'
  homepage 'https://www.linphone.org/'

  app 'Linphone.app'
end
