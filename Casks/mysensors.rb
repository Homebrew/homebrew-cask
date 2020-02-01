cask 'mysensors' do
  version '1.0.0'
  sha256 '78316d1607a492f6ce34c18bc745585901edb5917c71fe10094ab743ae89577d'

  url "https://github.com/aisk/MySensors/releases/download/v#{version}/MySensors.zip"
  appcast 'https://github.com/aisk/MySensors/releases.atom'
  name 'MySensors'
  homepage 'https://github.com/aisk/MySensors'

  app 'MySensors.app'
end
