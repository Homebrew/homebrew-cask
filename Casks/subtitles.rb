cask :v1 => 'subtitles' do
  version '2.3'
  sha256 '2b4d3fb2ab4399b021752762e7a9394e49a77c6e9a0c28c0412e799942887e43'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => '7f06acee1a20d9ac324c90950952f2160b69839eee00a9d741a09a8799cb6a84'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'
end
