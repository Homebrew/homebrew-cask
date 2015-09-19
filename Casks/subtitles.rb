cask :v1 => 'subtitles' do
  version '3.2.4'
  sha256 'ae2b2b0cb3e1229c1467a00fb5142dd18e454b4973d2b5cc61eff58c1c4c45c9'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => 'a93e1c4b9df7b46997212dc79ca999b5d521d308be82b910e92759511dd68ae4'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'
end
