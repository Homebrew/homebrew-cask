cask :v1 => 'flexiglass' do
  version '1.6-12312'
  sha256 '1fbe8aeac30254487cf69ccc556f8a214acfdcc340edc885697e4d0618a95641'

  url "http://downloads.nulana.com/flexiglass/Flexiglass-#{version}.zip"
  appcast 'http://downloads.nulana.com/flexiglass/appcast.xml',
          :sha256 => 'f70568526030303c5d319daa0823eb80b24715e9abbcfb7952ad3b716fd6276b'
  name 'Flexiglass'
  homepage 'http://nulana.com/flexiglass/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'
  depends_on :arch => :intel

  app 'Flexiglass.app'
end
