cask 'linphone' do
  version '4.1.1'
  sha256 'b1a5e518c1c564d47f992adadb09ea8cdb51f35e1a0935d4e2060468f893328e'

  url "https://www.linphone.org/releases/macosx/Linphone-#{version}-mac.dmg"
  appcast 'https://www.linphone.org/releases/macosx/RELEASE',
          checkpoint: '1c2e9c6b3dcf0ca0dad9a60ad32ee0de93f85c5239a0d56cd8119ca9af20d604'
  name 'Linphone'
  homepage 'https://www.linphone.org/'

  app 'Linphone.app'
end
