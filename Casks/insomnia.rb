cask 'insomnia' do
  version '5.7.4'
  sha256 '69a5fef20051e3eba3eeb13a2218e16f5329070ee744d9ed2934525df673ed17'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'c2b41ed22b3d0abd5ec61872679685ee758397605d622e3ae10a1dc6a3982377'
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
