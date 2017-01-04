cask 'messenger-for-desktop' do
  version '2.0.4'
  sha256 '3bf9d0668cdf9dd434150d6c87f8ff6de93846a4c77a0f3bb1e820afad1910c6'

  # github.com/Aluxian/Facebook-Messenger-Desktop was verified as official when first introduced to the cask
  url "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/messengerfordesktop-#{version}-osx.dmg"
  appcast 'https://github.com/Aluxian/Facebook-Messenger-Desktop/releases.atom',
          checkpoint: 'd63acc80f778fa451fe48d9737408e41312577f39e672e0836b082f876ed0adb'
  name 'Messenger for Desktop'
  homepage 'https://messengerfordesktop.com/'

  app 'Messenger for Desktop.app'
end
