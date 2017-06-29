cask 'ghostlab' do
  version '2.1.4'
  sha256 '28ccfc34163c9f5f7ffd4a15957d8c640286a9faa7ddf17652a2570af08c8bc1'

  url "https://awesome.vanamco.com/Ghostlab#{version.major}/downloads/Ghostlab#{version.major}.dmg"
  appcast "https://awesome.vanamco.com/Ghostlab2/update/ghostlab#{version.major}-cast.xml?vco=trkd",
          checkpoint: '4c26d63cd6e157eb11f995aa79ac4c39dfdeaca1dd7758d2348b74eebfca2be5'
  name 'Ghostlab'
  homepage 'https://www.vanamco.com/ghostlab/'

  app "Ghostlab#{version.major}.app"
end
