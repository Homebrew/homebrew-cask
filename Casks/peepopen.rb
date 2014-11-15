cask :v1 => 'peepopen' do
  version :latest
  sha256 :no_check

  url 'https://topfunky.github.io/PeepOpen/dl/PeepOpen.dmg'
  appcast 'https://peepcode.com/system/apps/PeepOpen/appcast.xml'
  homepage 'http://topfunky.github.io/PeepOpen/'
  license :oss

  app 'PeepOpen.app'
end
