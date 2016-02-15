cask 'lingon-x' do
  version '2.3.4'
  sha256 '98cbc56f21e757d1ff020ef1857aaf3e487953918eebcad133b375c389617108'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'ffc48fa080871daf5b3e96464dabfbc4ed1139cd5909f86d057cd239e3caf719'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
