cask 'electrum' do
  version '4.0.2'
  sha256 'dfbdda1b09ea7b7ad39657a4930fd9b90957fb108970900cd978feafcfa82d10'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom'
  name 'Electrum'
  homepage 'https://electrum.org/'

  app 'Electrum.app'

  zap trash: [
               '~/.electrum',
               '~/Library/Preferences/Electrum.plist',
               '~/Library/Preferences/org.org.pythonmac.unspecified.Electrum.plist',
               '~/Library/Saved Application State/Electrum.savedState',
             ]
end
