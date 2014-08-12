class Sonora < Cask
  version 'latest'
  sha256 :no_check

  url 'https://github.com/downloads/sonoramac/Sonora/Sonora.zip'
  appcast 'http://getsonora.com/updates/sonora2.xml'
  homepage 'http://getsonora.com/'

  link 'Sonora.app'
end
