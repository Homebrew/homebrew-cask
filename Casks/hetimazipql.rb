cask 'hetimazipql' do
  version '1.0.1'
  sha256 '3c8c426e3a6385317e64c11c8ab912f50ed96708e686f01da48deac5b6dc9158'

  url "http://hetima.com/hetimazipql/HetimaZip.qlgenerator#{version}.zip"
  name 'HetimaZip.qlgenerator'
  homepage 'http://hetima.com/hetimazipql/'

  qlplugin "HetimaZip.qlgenerator#{version}/HetimaZip.qlgenerator"
end
