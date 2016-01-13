cask 'sonora' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url 'https://github.com/downloads/sonoramac/Sonora/Sonora.zip'
  appcast 'https://getsonora.com/updates/sonora2.xml',
          :checkpoint => '6bc10e0ee1e63b8d453557ffba549974fcca1e0847f7b5ecd7d96e4595e1458d'
  name 'Sonora'
  homepage 'https://getsonora.com/'
  license :gratis

  app 'Sonora.app'
end
