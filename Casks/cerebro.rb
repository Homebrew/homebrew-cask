cask 'cerebro' do
  version '0.2.7'
  sha256 '170e4bbf0104ebe4bb0667dafceccc033abd652966ee33721e7d6f85b9f9b564'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: 'b6819500d8d2da2c703d2f085060f1937f11d8b906a1a5f59035bcba3d9ea926'
  name 'Cerebro'
  homepage 'https://cerebroapp.com/'

  app 'Cerebro.app'
end
