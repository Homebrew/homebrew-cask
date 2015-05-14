cask :v1 => 'duet' do
  version '1.2.9'
  sha256 'de45914dd00923e372a1d2aa205f4d14e27dd005c228af093a8e9a95d7516951'

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.kairos.duet/1.2.9/1430518908/duet-1.2.9.zip'
  name 'Duet'
  homepage 'http://www.duetdisplay.com/'
  license :unknown

  app 'duet.app'

  uninstall :kext => 'com.karios.driver.DuetDisplay',
            :delete => '/usr/libexec/coreduetd'
end
