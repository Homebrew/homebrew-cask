cask 'paste' do
  version '2.0.0'
  sha256 '9e6983c2d6d6e1146a6f2ea5c3cdd7afe309fa7026882be159ef64cd052566df'

  # hockeyapp.net/api/2/apps/ee24d1a939cd4ff8b2861eb8c788a995 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/ee24d1a939cd4ff8b2861eb8c788a995?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/ee24d1a939cd4ff8b2861eb8c788a995',
          checkpoint: '0618aaad6d8f42b92351aedc35feb8873f7b7cd6e38427d13b7cfe56518d8d59'
  name 'Paste'
  homepage 'http://pasteapp.me/'

  app 'Paste.app'
end
