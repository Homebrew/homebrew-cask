cask :v1 => 'iexplorer' do
  version '3.7.4.0'
  sha256 'd55e905def1a0b691fefdcf3ae2b0d3771b6a640f17b5168dac7f625d904e08c'

  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '7d204dc3e1c42c6f50e30f1175c859b515f708d86a406f040ed684e2a5fda59c'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  app 'iExplorer.app'
end
