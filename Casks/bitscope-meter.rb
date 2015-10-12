cask :v1 => 'bitscope-meter' do
  version '2.0'
  sha256 'de1877050993fde72e1efbe135035b9dc2589cc60fb80e0c876057c89cd56f82'

  url 'http://bitscope.com/download/files/bitscope-meter_2.0.DD14E.app.tgz'
  name 'Bitscope'
  homepage 'http://www.bitscope.com/'
  license :unknown

  app 'bitscope-meter.app'

end