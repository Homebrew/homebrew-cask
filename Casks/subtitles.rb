cask 'subtitles' do
  version '3.2.8'
  sha256 'b49d76be6d7b6720ee0024a6bdd9dae946520c24a7adc1be2e9ffc6959b70f1b'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => '0be1f521663c0613abe176314e166b0fd13a5adcf3f58e9ef066d979995848c9'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'

  zap :delete => '~/Library/Application Support/Subtitles'
end
