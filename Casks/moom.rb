cask 'moom' do
  version '3.2.6'
  sha256 '482dd69788ac707f13483631eae5aaef7fcc356b688d51e359a3b69fc531a143'

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/moom/appcast',
          checkpoint: 'bc2bee38bf81ffd05241e99899af816ba4807a96864e84ec0c89aa50b9e3d93d'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'

  auto_updates true

  app 'Moom.app'

  zap delete: [
                '~/Library/Preferences/com.manytricks.Moom.plist',
                '~/Library/Application Support/Many Tricks',
              ]
end
