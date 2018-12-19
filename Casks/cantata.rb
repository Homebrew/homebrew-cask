cask 'cantata' do
  version '2.3.2'
  sha256 'c9eb8a1102d0a68cafc93f22df73445b8f69706f3322285f9a2f623a28df0176'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'

  app 'Cantata.app'
end
