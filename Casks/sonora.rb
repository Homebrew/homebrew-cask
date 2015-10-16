cask :v1 => 'sonora' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url 'https://github.com/downloads/sonoramac/Sonora/Sonora.zip'
  appcast 'https://getsonora.com/updates/sonora2.xml'
  name 'Sonora'
  homepage 'https://getsonora.com/'
  license :gratis

  app 'Sonora.app'
end
