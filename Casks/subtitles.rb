cask :v1 => 'subtitles' do
  version '3.1'
  sha256 'c98e09eefc8cc39148ae0f9ef38ad6985f6dc0faffcd0c6a5f0f451ae90cadfd'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          :sha256 => '8f1cba83aa761565a9e07a194385cce8283e4d1e7662dc89256f04157864ec4d'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'
end
