cask 'narrative-uploader' do
  version '2.0.6'
  sha256 'b9ada6a6ac631e14b2de24041f1e621e48a2b2a6698018eca06dc343456be8b7'

  url "https://dl.getnarrative.com/appcast/installers/NarrativeUploader_v#{version}.dmg"
  appcast 'https://dl.getnarrative.com/appcast/osx.xml',
          checkpoint: '2f8a198d12ccc1476ea2c164015412fc6f56c3017baa6b794e243e9da925ab2a'
  name 'Narrative Uploader'
  homepage 'https://getnarrative.com/'

  app 'Narrative Uploader.app'
end
