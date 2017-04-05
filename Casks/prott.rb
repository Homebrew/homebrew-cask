cask 'prott' do
  version '1.0.0'
  sha256 'c1c3c76608f669791edfddb7237fd672d8c52d4301cbd9b9fbc505c707a7afd7'

  url 'https://dl.prottapp.com/apps/prott.dmg'
  appcast 'https://dl.prottapp.com/apps/appcast.xml',
          checkpoint: 'a6878656337db7d1542331666345fb8b080780c1d2618b9143369759187b0227'
  name 'Prott'
  homepage 'https://prottapp.com/'

  app 'Prott.app'
end
