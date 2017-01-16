cask 'keystore-explorer' do
  version '5.2.2'
  sha256 'c6ab532a0e9ec41caf0177823b9ced256c9d241e77f3c39a6ad1070cfffe5a0f'

  url "https://downloads.sourceforge.net/keystore-explorer/KSE%20#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://sourceforge.net/projects/keystore-explorer/rss',
          checkpoint: '7b15fcaa57e590af43362b426bcc2dda8e06e020735351a637cfc1547c91759f'
  name 'KeyStore Explorer'
  homepage 'http://keystore-explorer.sourceforge.net/'

  app "KeyStore Explorer #{version}.app"
end
