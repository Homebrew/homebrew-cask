cask :v1 => 'narrative-uploader' do
  version :latest
  sha256 :no_check

  url 'http://dl.getnarrative.com/appcast/installers/NarrativeUploader.dmg'
  appcast 'http://dl.getnarrative.com/appcast/osx.xml'
  homepage 'http://getnarrative.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Narrative Uploader.app'
end
