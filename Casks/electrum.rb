cask 'electrum' do
  version '3.0.4'
  sha256 'b4f2b57a30880f9762b8ab31abaa3e7c853693223f4fad65c8c9241bb0d0ab70'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: '6be2c04177a9fbcc607f54b171a88c4690223d80ab373186387e201af5099310'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'

  zap trash: [
               '~/.electrum',
               '~/Library/Preferences/Electrum.plist',
               '~/Library/Preferences/org.org.pythonmac.unspecified.Electrum.plist',
               '~/Library/Saved Application State/Electrum.savedState',
             ]
end
