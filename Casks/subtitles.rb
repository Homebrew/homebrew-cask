cask :v1 => 'subtitles' do
  version '2.3'
  sha256 '136c819187ed86d0c40de96577181906b9b8fc9c8bbe930c0eb989c8d4b0ed2d'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => '7f06acee1a20d9ac324c90950952f2160b69839eee00a9d741a09a8799cb6a84'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'
end
