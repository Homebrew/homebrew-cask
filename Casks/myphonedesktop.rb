cask :v1 => 'myphonedesktop' do
  version '2.0.3'
  sha256 '89cab32dcb91ea67a6627dba0690d54ab01ec1f74d322995c9d289ca016578a0'

  url "http://www.myphonedesktop.com/dwn/myPhoneDesktop_macos_#{version.gsub('.','_')}.dmg"
  homepage 'http://www.myphonedesktop.com/'
  license :unknown

  app 'myPhoneDesktop.app'
end
