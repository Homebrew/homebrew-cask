cask 'deploymate' do
  version '1.3.6'
  sha256 'c1bf5bdbbb0f3fce95a7afdfb578ff821f1b41c6232f4cf9f4857072159055b8'

  # amazonaws.com/deploymate was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deploymate/download/Deploymate#{version.no_dots}.zip"
  appcast 'http://www.deploymateapp.com/deploymate-updates.xml',
          checkpoint: '2557bac19dee7963a93093aeb21c2dd2820a07c780275e3c3358f07534b24312'
  name 'Deploymate'
  homepage 'http://www.deploymateapp.com/'

  app 'Deploymate.app'

  zap trash: [
               '~/Library/Caches/com.ivanvasic.deploymate',
               '~/Library/Preferences/com.ivanvasic.deploymate.plist',
               '~/Library/Preferences/com.ivanvasic.deploymate.LSSharedFileList.plist',
             ]
end
