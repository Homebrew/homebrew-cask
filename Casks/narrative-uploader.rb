cask 'narrative-uploader' do
  version :latest
  sha256 :no_check

  url 'https://dl.getnarrative.com/appcast/installers/NarrativeUploader.dmg'
  appcast 'https://dl.getnarrative.com/appcast/osx.xml',
          :checkpoint => 'db3fe560e55b1735cfeb457552ec724d95c75b72699bb28e2590c12b58972919'
  name 'Narrative Uploader'
  homepage 'http://getnarrative.com'
  license :gratis

  app 'Narrative Uploader.app'
end
