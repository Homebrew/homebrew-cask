cask 'ghostlab' do
  version '3.2.0'
  sha256 '5f9b9b521256bb4514945b2c669c6dc60837f909a4187c071d0602a7bb4f155e'

  url "https://awesome.vanamco.com/Ghostlab#{version.major}/downloads/Ghostlab#{version.major}.dmg"
  appcast 'https://awesome.vanamco.com/Ghostlab3/update/ghostlab3-cast.xml?vco=trkd'
  name 'Ghostlab'
  homepage 'https://www.vanamco.com/ghostlab/'

  app "Ghostlab#{version.major}.app"
end
