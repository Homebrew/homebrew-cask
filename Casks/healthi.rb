cask 'healthi' do
  version '1.3.0'
  sha256 '7c4025b80faf5fb53ed9ce021805401a78dc4a86cfe02c47ec27ccd2a20dbc55'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: '4c04647cf7ad53ba9937ae4301b67697a4bfacfb31337311d1523635113d47c5'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi.app'
end
