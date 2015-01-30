cask :v1 => 'duet' do
  version '1.2.5'
  sha256 'd3c178b6b07347fcacc62396706f4f6b9efbbc8d8eb7b0b5f003df0406d59143'

  # devmate.com is the official download host per the vendor homepage
  url "http://dl.devmate.com/com.kairos.duet/#{version}/1422514272/duet-#{version}.zip"
  name 'Duet'
  homepage 'http://www.duetdisplay.com/'
  license :unknown

  app 'duet.app'

  uninstall :kext => 'com.karios.driver.DuetDisplay',
            :delete => '/usr/libexec/coreduetd'
end
