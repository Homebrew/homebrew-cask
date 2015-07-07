cask :v1 => 'subtitles' do
  version '2.3'
  sha256 'ee32064038b1911f1788e08c15dc52ab762748fef9aa16fabde9206da251ab10'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => '7f06acee1a20d9ac324c90950952f2160b69839eee00a9d741a09a8799cb6a84'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'
end
