cask 'narrative-uploader' do
  version '201510131242'
  sha256 '1cc4cae7a1cfe43e3e35a2d49aa51a220925298f9628b2e2f84e900a1a82943b'

  url "http://dl.getnarrative.com/appcast/osx/#{version}.zip"
  appcast 'https://dl.getnarrative.com/appcast/osx.xml',
          checkpoint: 'db3fe560e55b1735cfeb457552ec724d95c75b72699bb28e2590c12b58972919'
  name 'Narrative Uploader'
  homepage 'http://getnarrative.com'
  license :gratis

  app 'Narrative Uploader.app'
end
