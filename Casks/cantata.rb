cask 'cantata' do
  version '2.0.1'
  sha256 '534fc39e4b540a2aafbcb06f175af2a772fd503a9f7434a9be2bb82a39a78277'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom',
          checkpoint: '4421d33d3c8b121da3d7740b2ce6bc356d8f04c6a762581f6787ee2e7cdf1c0d'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'

  app 'Cantata.app'
end
