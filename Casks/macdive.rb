cask 'macdive' do
  version '2.10.10'
  sha256 '6e7f8cfa541828ccb3458f6eb3bec21421ae10d7c7e9181e020532c58c33a942'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
