cask :v1 => 'iexplorer' do
  version '3.7.5.0'
  sha256 '724249be5603f224e52fa1bf20e6be11c92d30ff3422eb92521cb1e40d07ad93'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '7d204dc3e1c42c6f50e30f1175c859b515f708d86a406f040ed684e2a5fda59c'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  app 'iExplorer.app'
end
