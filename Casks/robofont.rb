cask 'robofont' do
  version '3.0'
  sha256 '2f7dbd6d8f699e5365182d05fee16aff2c1724a50ad559989892e9402ac49fca'

  # static.typemytype.com/robofont was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/robofont/RoboFont.dmg'
  appcast 'https://doc.robofont.com/appcast.xml',
          checkpoint: '10c7c710f11c3aa1ef0ebb29d68579e2cb99c2f2bbb54f482d5cf138d98c52da'
  name 'RoboFont'
  homepage 'https://robofont.com/'

  depends_on macos: '>= :mavericks'

  app 'RoboFont.app'
end
