cask 'subtitles' do
  version '3.2.8'
  sha256 'b49d76be6d7b6720ee0024a6bdd9dae946520c24a7adc1be2e9ffc6959b70f1b'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          checkpoint: 'a5a1ef9ee94168d9522dbd922d5e292af79766e9dca5f79f1772bc548085b2a9'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'

  zap delete: '~/Library/Application Support/Subtitles'
end
