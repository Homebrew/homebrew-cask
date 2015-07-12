cask :v1 => 'subtitles' do
  version '3.0.103'
  sha256 'accc049b4f7d26ea31ca8693d43b8d3be785e4c529fb12b7a2ec8fda8f0109cd'

  url "http://subtitlesapp.com/static/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => '7f06acee1a20d9ac324c90950952f2160b69839eee00a9d741a09a8799cb6a84'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'
end
