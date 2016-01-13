cask 'narrative-uploader' do
  version :latest
  sha256 :no_check

  url 'https://dl.getnarrative.com/appcast/installers/NarrativeUploader.dmg'
  appcast 'https://dl.getnarrative.com/appcast/osx.xml',
          :sha256 => 'c075baaa2bfdb4411bc20ef62ba03769ed229f6075292edd596b82bc05a68ecf'
  name 'Narrative Uploader'
  homepage 'http://getnarrative.com'
  license :gratis

  app 'Narrative Uploader.app'
end
