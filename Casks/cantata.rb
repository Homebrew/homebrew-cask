cask 'cantata' do
  version '2.0.1'
  sha256 '534fc39e4b540a2aafbcb06f175af2a772fd503a9f7434a9be2bb82a39a78277'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom',
          checkpoint: 'b29b78442f6e911557c3d356e791ca702865cbccb8d930e81207a8b5d0da05d0'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'
  license :gpl

  app 'Cantata.app'
end
