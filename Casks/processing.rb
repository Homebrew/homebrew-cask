cask 'processing' do
  version '3.2'
  sha256 'f6e94847b9be044efec353c64857a2534bc8e40e2f40f96354c0bcb8f8541cfd'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '1ba288228624b5994069e28efc5c2ae46ea3f0bd8c8ac21167412933d355f92c'
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
