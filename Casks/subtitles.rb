cask 'subtitles' do
  version '3.2.8'
  sha256 'b49d76be6d7b6720ee0024a6bdd9dae946520c24a7adc1be2e9ffc6959b70f1b'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :checkpoint => '639d4dd71085e2df4aff0e863698574082f3f3bc8d2e93c53f5c9da39e1df8b9'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'

  zap :delete => '~/Library/Application Support/Subtitles'
end
