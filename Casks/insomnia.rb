cask 'insomnia' do
  version '5.4.0'
  sha256 '2e51ae904300c4408ee2b38029554f8762795e47f8c0b705ee94e4d33c81a213'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '712b93c589b5c7cdccd39321a5964701cd5108e92d68eed4e35f8fe863b083e8'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  auto_updates true

  app 'Insomnia.app'

  zap delete: [
                '~/Library/Application Support/Insomnia',
                '~/Library/Caches/com.insomnia.app',
                '~/Library/Preferences/com.insomnia.app.helper.plist',
                '~/Library/Preferences/com.insomnia.app.plist',
                '~/Library/Saved Application State/com.insomnia.app.savedState',
              ]
end
