cask 'moom' do
  version '3.2.11'
  sha256 '9b3f396ccc27531819ea4874aeadbbf616bfde2a1cd7faf108f0b68006faa84a'

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/moom/appcast',
          checkpoint: '48fdb00f4e3bc85739d5990672c9121379256b3d063696468d13eade70397f23'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'

  auto_updates true

  app 'Moom.app'

  zap trash: [
               '~/Library/Preferences/com.manytricks.Moom.plist',
               '~/Library/Application Support/Many Tricks',
             ]
end
