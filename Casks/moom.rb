cask 'moom' do
  version '3.2.5'
  sha256 'c6ba0b0d1b02893dfa88b79524039129e3d4c7cb4688420e159d7b6bddf3fe61'

  url 'https://manytricks.com/download/moom'
  appcast 'https://manytricks.com/moom/appcast.xml',
          checkpoint: '9794a3f60d93e39cd1ea56d157635e881db492abcafdd13704cd6b8b58efeb4c'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'
  license :commercial

  auto_updates true

  app 'Moom.app'

  zap delete: [
                '~/Library/Preferences/com.manytricks.Moom.plist',
                '~/Library/Application Support/Many Tricks',
              ]
end
