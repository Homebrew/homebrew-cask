cask 'bitscope-meter' do
  version '2.0.FK22G'
  sha256 '1aa8d0171918870155eeb5b58f38676c7e46541b11dd25f6bfaade13bb549ccd'

  url "http://bitscope.com/download/files/bitscope-meter_#{version}.app.tgz"
  name 'BitScope Meter'
  homepage 'http://www.bitscope.com/'

  app 'bitscope-meter.app'
end
