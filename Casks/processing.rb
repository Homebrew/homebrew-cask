cask 'processing' do
  version '3.1.1'
  sha256 '32bb3ae5c431e5bc92a457a53d3bac51874a530898c32625a44b5bdcf1edebdc'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'fb0627edbf01a70261d623306a63c455d96f182d70b2e4caf390adfa8063f92d'
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
