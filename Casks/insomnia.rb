cask 'insomnia' do
  version '5.1.1'
  sha256 '52ccd01d5706c8ddf4aa005ec7763e49ecbd418699534c9866b0ff61ba07399e'

  url 'https://builds.insomnia.rest/downloads/mac/latest'
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'f4fa4111a12930416d5425f44486b91955a9f1ab4c6d38625225c885a728f9f4'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'

  zap delete: [
                '~/Library/Application Support/Insomnia',
                '~/Library/Caches/com.insomnia.app',
                '~/Library/Preferences/com.insomnia.app.helper.plist',
                '~/Library/Preferences/com.insomnia.app.plist',
                '~/Library/Saved Application State/com.insomnia.app.savedState',
              ]
end
