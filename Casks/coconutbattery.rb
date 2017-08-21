cask 'coconutbattery' do
  if MacOS.version <= :mavericks
    version '3.3.4'
    sha256 '0edf6bdaf28fb3cc9c242fd916c348fbbae30a5356ddc1d6e5158d50f96d740d'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.dots_to_underscores}.zip"
  else
    version '3.6.3'
    sha256 '4ba6e7cb99d08444aa92d00f898eae4e1d22aa67e8aab953fc034c08ac3254c3'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
    appcast 'https://coconut-flavour.com/updates/coconutBattery.xml',
            checkpoint: 'e324ffa6292bd276745cdc8e6f27aff23873fea790726a01eaf614e7364535f5'
  end

  name 'coconutBattery'
  homepage 'https://www.coconut-flavour.com/coconutbattery/'

  app 'coconutBattery.app'

  zap delete: [
                '~/Library/Application Support/coconutBattery',
                '~/Library/Caches/com.coconut-flavour.coconutBattery',
                '~/Library/Preferences/com.coconut-flavour.coconutBattery.plist',
                '~/Library/Saved Application State/com.coconut-flavour.coconutBattery.savedState',
              ]
end
