cask 'myphonedesktop' do
  version '2.0.3'
  sha256 '89cab32dcb91ea67a6627dba0690d54ab01ec1f74d322995c9d289ca016578a0'

  url "http://www.myphonedesktop.com/dwn/myPhoneDesktop_macos_#{version.gsub('.', '_')}.dmg"
  name 'myPhoneDesktop'
  homepage 'http://www.myphonedesktop.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'myPhoneDesktop.app'
end
