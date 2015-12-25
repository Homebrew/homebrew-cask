cask 'narrative-uploader' do
  version :latest
  sha256 :no_check

  url 'http://dl.getnarrative.com/appcast/installers/NarrativeUploader.dmg'
  appcast 'http://dl.getnarrative.com/appcast/osx.xml',
          :sha256 => '82825330318ddb9cec11226ad6c040fa63defbd4a2356b0f18b976f2117e22d0'
  name 'Narrative Uploader'
  homepage 'http://getnarrative.com'
  license :gratis

  app 'Narrative Uploader.app'
end
