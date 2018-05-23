cask 'airy' do
  version '3.5,197'
  sha256 '021b75b0731cf70cdea7834d383022a834c352d3ca18bbdcee4036989c03f8b7'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml',
          checkpoint: '1c670e22e988951a362899466b0d76ad6a5b3fd6dbc90b813f448df069ce7577'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
