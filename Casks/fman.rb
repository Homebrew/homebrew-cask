cask 'fman' do
  version '1.5.3'
  sha256 '66dcaa9f76c22a2c0729d0105ec361f6f0843e80bac55678424e3eabdd4e1a48'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
