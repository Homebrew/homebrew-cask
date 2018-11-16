cask 'macdive' do
  version '2.10.4'
  sha256 'fcb13030983fa424002cdf24817f06bc31009d06628acbec7b49c01c88954ca1'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
