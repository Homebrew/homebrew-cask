cask 'paste' do
  version '2.2.1,6'
  sha256 '131e1a2c06e88c1532570e4342073b043023fd049508b31be9d90a93f6defab1'

  # rink.hockeyapp.net/api/2/apps/ee24d1a939cd4ff8b2861eb8c788a995 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/ee24d1a939cd4ff8b2861eb8c788a995/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/ee24d1a939cd4ff8b2861eb8c788a995',
          checkpoint: 'c1c8499b83a3f44b49f8985d7c508cea576cca12c8619720491c33f58458d06f'
  name 'Paste'
  homepage 'http://pasteapp.me/'

  app 'Paste.app'
end
