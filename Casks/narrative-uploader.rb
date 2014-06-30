class NarrativeUploader < Cask
  version 'latest'
  sha256 :no_check

  url 'http://dl.getnarrative.com/appcast/installers/NarrativeUploader.dmg'
  appcast 'http://dl.getnarrative.com/appcast/osx.xml'
  homepage 'http://getnarrative.com'

  link 'Narrative Uploader.app'
end
