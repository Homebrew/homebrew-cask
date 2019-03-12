cask 'macdive' do
  version '2.10.9'
  sha256 'a4429ed0d4fdcffe9bf9bf34c2a2e0541786c4e692e88c0d2aa7e7c23f60f820'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
