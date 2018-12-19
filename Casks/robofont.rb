cask 'robofont' do
  version '3.1'
  sha256 '82e03426bcae68c0712b6733f177c1f5b4376508eee67836be1729dbbc7ca77e'

  # static.typemytype.com/robofont was verified as official when first introduced to the cask
  url 'https://static.typemytype.com/robofont/RoboFont.dmg'
  appcast 'https://doc.robofont.com/appcast.xml'
  name 'RoboFont'
  homepage 'https://robofont.com/'

  depends_on macos: '>= :mavericks'

  app 'RoboFont.app'
end
