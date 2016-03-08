cask 'appdelete' do
  version '4.2.4'
  sha256 '1f756815dd59bc78fb99791aa4ec8b6f7ad6ce2224f84b95ad0f1cfcbbff3bfd'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml',
          checkpoint: 'ae708e0922e77626a0bfc87dfcfad7c5bd8e8a4c3e3817e171141f880281fa68'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :commercial

  app 'AppDelete.app'
end
