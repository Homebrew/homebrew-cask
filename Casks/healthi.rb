cask 'healthi' do
  version '1.2.0'
  sha256 'c79bc35efbd1e501c6cc4f67241c2e6b3e67cd5fe42c31074ff2f09f78dc7882'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: '4c04647cf7ad53ba9937ae4301b67697a4bfacfb31337311d1523635113d47c5'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi.app'
end
