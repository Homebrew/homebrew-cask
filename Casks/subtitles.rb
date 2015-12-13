cask :v1 => 'subtitles' do
  version '3.2.7'
  sha256 'aa1eaf186cd21689b6a7235aaf920204eed5523e77c76b85afc2aeb8caf1592f'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => '9605e4522324c187d6b278bc6025825a7a848cf136c3fcbdc6ff0e9629480e5b'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'

  zap :delete => '~/Library/Application Support/Subtitles'
end
