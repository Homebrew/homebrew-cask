cask 'insomnia' do
  version '5.8.4'
  sha256 '40c01e94b13f9ceb8ee50b097be37b012be6c3da539bbc41fbe2497753101bfb'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'f3788c8691cadd6ffe1733d406d3651d683ef6a91c9dc90ae84568f9cfd6a2f0'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  auto_updates true

  app 'Insomnia.app'

  zap delete: [
                '~/Library/Caches/com.insomnia.app',
                '~/Library/Caches/com.insomnia.app.ShipIt',
                '~/Library/Cookies/com.insomnia.app.binarycookies',
                '~/Library/Saved Application State/com.insomnia.app.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Insomnia',
                '~/Library/Preferences/com.insomnia.app.helper.plist',
                '~/Library/Preferences/com.insomnia.app.plist',
              ]
end
