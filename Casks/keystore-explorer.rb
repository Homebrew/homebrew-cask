cask 'keystore-explorer' do
  version '5.2.2'
  sha256 'c6ab532a0e9ec41caf0177823b9ced256c9d241e77f3c39a6ad1070cfffe5a0f'

  url "https://downloads.sourceforge.net/keystore-explorer/KSE%20#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://sourceforge.net/projects/keystore-explorer/rss',
          checkpoint: '6e53faf2de2906e436facf8a5798956fcbb525b3d55728d1ad14424684fa6e1a'
  name 'KeyStore Explorer'
  homepage 'http://keystore-explorer.sourceforge.net/'

  app "KeyStore Explorer #{version}.app"
end
