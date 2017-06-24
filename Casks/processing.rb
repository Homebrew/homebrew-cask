cask 'processing' do
  version '3.3.5'
  sha256 '8fae957b6ccb62254e3e4cdf04b025bee238c3c56da609ce22206b37122f3501'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '72f9a6ee7ab08b4edf447de994d23c57220d2a3ef04f48d5cd25b0dd57430796'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap trash: '~/Library/Processing/preferences.txt'
end
