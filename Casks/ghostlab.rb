cask 'ghostlab' do
  version '3.3.0'
  sha256 '61e8085ac52520a9a7502eac760564cb239692fbd3c46fba787834fd501137bc'

  url "https://awesome.vanamco.com/Ghostlab#{version.major}/downloads/Ghostlab#{version.major}.dmg"
  appcast 'https://awesome.vanamco.com/Ghostlab3/update/ghostlab3-cast.xml?vco=trkd'
  name 'Ghostlab'
  homepage 'https://www.vanamco.com/ghostlab/'

  app "Ghostlab#{version.major}.app"
end
