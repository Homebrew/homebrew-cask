cask 'healthi' do
  version '4.0.0'
  sha256 'b39e09788feda9d8ca8f2470432cda876d11340532eaeee8e34de0f1a7fc0675'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/Healthi-#{version}-mac.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'Healthi.app'
end
