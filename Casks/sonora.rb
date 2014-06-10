class Sonora < Cask
  url 'https://github.com/downloads/sonoramac/Sonora/Sonora.zip'
  appcast 'http://getsonora.com/updates/sonora2.xml'
  homepage 'http://getsonora.com/'
  version 'latest'
  sha256 :no_check
  link 'Sonora.app'
end
