cask :v1 => 'narrative-uploader' do
  version :latest
  sha256 :no_check

  url 'http://dl.getnarrative.com/appcast/installers/NarrativeUploader.dmg'
  appcast 'http://dl.getnarrative.com/appcast/osx.xml'
  name 'Narrative Uploader'
  homepage 'http://getnarrative.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Narrative Uploader.app'
end
