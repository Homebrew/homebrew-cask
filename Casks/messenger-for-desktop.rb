cask 'messenger-for-desktop' do
  version '2.0.1'
  sha256 'a1813dc526a1eb39099993e677632808372e82bb556cd694d0c2f043f80f4d0c'

  # github.com/Aluxian/Facebook-Messenger-Desktop was verified as official when first introduced to the cask
  url "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/messengerfordesktop-#{version}-osx.dmg"
  appcast 'https://github.com/Aluxian/Facebook-Messenger-Desktop/releases.atom',
          checkpoint: 'ffad9631c3186cb8bc9bdfa9c3a3a984e9981694ae4e3b72de29d27296088071'
  name 'Messenger for Desktop'
  homepage 'https://messengerfordesktop.com/'

  app 'Messenger for Desktop.app'
end
