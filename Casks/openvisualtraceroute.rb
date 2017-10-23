cask 'openvisualtraceroute' do
  version '1.6.5'
  sha256 'ae5c37fe3e8bb5348c9e03b326a91eadfe50e84a365677825a8fd7ddc3a6cfe5'

  # downloads.sourceforge.net/openvisualtrace was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openvisualtrace/#{version}/OpenVisualTraceRoute#{version}.dmg"
  appcast 'https://sourceforge.net/projects/openvisualtrace/rss',
          checkpoint: 'a9d378d7cbe829d31479a38307d89b95509520e2ccd06ca2b3b49c7db69f498a'
  name 'OpenVisualTraceroute'
  homepage 'http://visualtraceroute.net/'

  app 'OpenVisualTraceroute.app'

  zap trash: '~/ovtr'

  caveats do
    depends_on_java('8')
  end
end
