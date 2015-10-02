cask :v1 => 'subtitles' do
  version '3.2.5'
  sha256 '12a7646b8f6150bd978ea878d3a7a7f2d7ccb586976c82c633cfb691c5ca32e7'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => 'f4ce39ccdc98206b039b7241a127716f2282ea7e715a365a40b73bdf69d4e887'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'
end
