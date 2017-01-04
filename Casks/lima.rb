cask 'lima' do
  version '1.2.4'
  sha256 'caae6a8aa9209bd5ba5746a0406f3c1cf7f47adc89daa9c801f1830d1d127ee5'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
