cask 'kullo' do
  version '58.0.0'
  sha256 '8bbe3fad09bc44b3540107b69e421075fc3eba5fc5ea8463cdb61aea2cce19b5'

  url "https://www.kullo.net/download/files/osx/Kullo-#{version}.dmg"
  name 'Kullo'
  homepage 'https://www.kullo.net/'

  app 'Kullo.app'
end
