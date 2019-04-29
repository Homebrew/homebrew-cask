cask 'macdive' do
  version '2.10.11'
  sha256 'e19da274ea2e152a67cb5fb978db00170ca7c662d72131fab7f9a18178450a03'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
