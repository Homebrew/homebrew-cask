class Gravit < Cask
  version 'v1.0-rc1'
  sha256 'bb267504f87d39aaf2b654d33cc0b48ccb4c74a72f8b88dd9d78ced1a984f265'
  
  url "https://github.com/quasado/gravit-hub/releases/download/#{version}/gravit-osx.dmg"
  homepage 'http://gravit.io/'
  license :oss

  app 'Gravit.app'
end
