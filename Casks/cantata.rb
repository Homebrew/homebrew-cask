cask 'cantata' do
  version '2.0.1'
  sha256 '534fc39e4b540a2aafbcb06f175af2a772fd503a9f7434a9be2bb82a39a78277'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom',
          checkpoint: 'd9e69862c6f41763941f2c74d365fb0a3a2f2a45efeae96f87699a3bfac0a8c7'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'

  app 'Cantata.app'
end
