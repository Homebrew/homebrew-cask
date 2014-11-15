cask :v1 => 'sonora' do
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/sonoramac/Sonora/Sonora.zip'
  appcast 'http://getsonora.com/updates/sonora2.xml'
  homepage 'http://getsonora.com/'
  license :oss

  app 'Sonora.app'
end
