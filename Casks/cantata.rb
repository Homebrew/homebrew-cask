cask 'cantata' do
  version '2.0.1'
  sha256 '534fc39e4b540a2aafbcb06f175af2a772fd503a9f7434a9be2bb82a39a78277'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom',
          checkpoint: '3b9ed09aca605ae43105f789fdd9c5f39a5f391d5132e5e9390056a8b7f2f5de'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'

  app 'Cantata.app'
end
