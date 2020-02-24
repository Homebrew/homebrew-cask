cask 'ghostlab' do
  version '3.3.1'
  sha256 '6b54815927869f45d4e488c76f1cdda3aa653370e368657b8762bacd44845666'

  url "https://awesome.vanamco.com/Ghostlab#{version.major}/downloads/Ghostlab#{version.major}.dmg"
  appcast 'https://awesome.vanamco.com/Ghostlab3/update/ghostlab3-cast.xml?vco=trkd'
  name 'Ghostlab'
  homepage 'https://www.vanamco.com/ghostlab/'

  app "Ghostlab#{version.major}.app"
end
