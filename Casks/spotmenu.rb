cask 'spotmenu' do
  version '1.6'
  sha256 '200cdb32d23edb60aba3160681cf31cffeb105b418137faaa0f660e3f1968b16'

  url "https://github.com/kmikiy/SpotMenu/releases/download/v#{version}/SpotMenu.zip"
  appcast 'https://github.com/kmikiy/SpotMenu/releases.atom',
          checkpoint: '44ac87b10e5cee7c0cc7386211db361043725c8e030396d788a2dd78fa7fc8bc'
  name 'SpotMenu'
  homepage 'https://github.com/kmikiy/SpotMenu'

  app 'SpotMenu.app'
end
