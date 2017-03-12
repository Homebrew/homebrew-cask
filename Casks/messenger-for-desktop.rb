cask 'messenger-for-desktop' do
  version '2.0.6'
  sha256 'cd013a62c919e960555b267402ef6f79c10973ec78222eeb3ab707a13f38d275'

  # github.com/Aluxian/Facebook-Messenger-Desktop was verified as official when first introduced to the cask
  url "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/messengerfordesktop-#{version}-osx.dmg"
  appcast 'https://github.com/Aluxian/Facebook-Messenger-Desktop/releases.atom',
          checkpoint: 'b26b01cc4a54ceae8f024c5e157b1bb4327338faf5768b4bc38707f02e9fc662'
  name 'Messenger for Desktop'
  homepage 'https://messengerfordesktop.com/'

  app 'Messenger for Desktop.app'
end
