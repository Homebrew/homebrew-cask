cask 'macdive' do
  version '2.10.7'
  sha256 '7303d04b9da0f026a4e8c82f8ff2b14158df9294b1ae9649f41acbba0a3fa267'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
