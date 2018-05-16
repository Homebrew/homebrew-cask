cask 'openvisualtraceroute' do
  version '1.7.0'
  sha256 '29e76aff13e15cd6123238ce6673e7de74ce98ca0f0940d100423aac7e0bce42'

  # downloads.sourceforge.net/openvisualtrace was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openvisualtrace/#{version}/OpenVisualTraceRoute#{version}.dmg"
  appcast 'https://sourceforge.net/projects/openvisualtrace/rss',
          checkpoint: '407fb59baa4b9eb7651d9243b89c30b7481590947ef78bd5a4c24f5810f56531'
  name 'OpenVisualTraceroute'
  homepage 'http://visualtraceroute.net/'

  app 'OpenVisualTraceroute.app'

  zap trash: '~/ovtr'

  caveats do
    depends_on_java '8'
  end
end
