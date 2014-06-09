class NarrativeUploader < Cask
  url 'http://dl.getnarrative.com/appcast/installers/NarrativeUploader.dmg'
  appcast 'http://dl.getnarrative.com/appcast/osx.xml'
  homepage 'http://getnarrative.com'
  version 'latest'
  sha256 :no_check
  link 'Narrative Uploader.app'
end
