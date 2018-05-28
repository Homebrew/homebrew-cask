cask 'ondesoft-itunes-converter' do
  version '2.10.4'
  sha256 '282907b4c0f961b6fe6d89901238598f4c1fa67f565a5637aa375079974b6e5d'

  url 'https://www.ondesoft.com/download/oditunesconverter_mac.dmg'
  appcast 'https://www.ondesoft.com/itunes_converter/release-history.html',
          checkpoint: '5742a0db6c9ff40125d6da7f4b8b968ac0f1424c6e837764e4c52898a3794b70'
  name 'Ondesoft iTunes Converter'
  homepage 'https://www.ondesoft.com/itunes_converter/'

  app 'Ondesoft iTunes Converter.app'

  zap trash: [
               '~/Library/Application Support/Ondesoft iTunes Converter',
               '~/Library/Preferences/com.ondesoft.itunesconverter.plist',
             ]
end
