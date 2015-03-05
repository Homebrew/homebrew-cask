cask :v1 => 'gravit' do
  version 'v1.0-rc1'
  sha256 'bb267504f87d39aaf2b654d33cc0b48ccb4c74a72f8b88dd9d78ced1a984f265'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/quasado/gravit-hub/releases/download/#{version}/Gravit-Mac-OSX.dmg"
  homepage 'http://gravit.io/'
  license :cc

  app 'Gravit.app'
end
