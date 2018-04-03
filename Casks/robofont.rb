cask 'robofont' do
  version '3.0'
  sha256 '2f7dbd6d8f699e5365182d05fee16aff2c1724a50ad559989892e9402ac49fca'

  # static.typemytype.com was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/robofont/RoboFont.dmg'
  appcast 'http://doc.robofont.com/version-history/',
          checkpoint: 'd0c8849863bb6ecaba5559533ba096397ddade2dbe08a06a8a3127a3deb1c305'
  name 'RoboFont'
  homepage 'https://robofont.com/'

  depends_on macos: '>= :mavericks'

  app 'RoboFont.app'
end
