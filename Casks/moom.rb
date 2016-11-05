cask 'moom' do
  version '3.2.6'
  sha256 '482dd69788ac707f13483631eae5aaef7fcc356b688d51e359a3b69fc531a143'

  url 'https://manytricks.com/download/moom'
  appcast 'https://manytricks.com/moom/appcast.xml',
          checkpoint: 'ea75ccd05a0a5ffbff3da7692f5fb60315b6a13dc055a44562c07c38588edb41'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'

  auto_updates true

  app 'Moom.app'

  zap delete: [
                '~/Library/Preferences/com.manytricks.Moom.plist',
                '~/Library/Application Support/Many Tricks',
              ]
end
