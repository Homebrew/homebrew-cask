cask 'insomnia' do
  version '5.0.1'
  sha256 '548089b4ed54fd6ba911ef9854e4f47c6e2e85fb957981bce44d8e1691b21c85'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'ed4a33ac7e131a1d6c446495f5491f933c3a42223ac671a1f561df1f0d604fd7'
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
