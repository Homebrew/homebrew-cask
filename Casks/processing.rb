cask 'processing' do
  version '3.2.4'
  sha256 '9f9589124efb2b594047d8d21f956e96c89e8d2923ad0820f8011761ac7e34da'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '1c4d9bc20e673fecf08501a91efbe207b40219f45e2d0105e3f95b901def556d'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
