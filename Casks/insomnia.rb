cask 'insomnia' do
  version '4.2.7'
  sha256 'c24a1abee06cfa5f5d6ac2295d9e125acf815646e504ec4005229aa3b7c8bf16'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '58734aac37ce0ae67fedf064694f1e15d8286ab7d16fa3baac489e823a88e251'
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
