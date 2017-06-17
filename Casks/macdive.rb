cask 'macdive' do
  version '2.8.3'
  sha256 '4c39a54b585137fbaabac85d639400fc2c16991440e620fa7c5d102a6d4815a0'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive',
          checkpoint: '4920ce219477bc4f30f4f90e8e0bb01e17e40b57c71095d446be2e7542760957'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
