cask 'insomnia' do
  version '5.8.2'
  sha256 '28ca517fbb67afa5ea19c346195f30807dc8181bfd205e2620a83a1e64fdacd6'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '276d2337781da64b927f8e90a5e08553203a751aef943d30bb9be99abc7bf260'
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
