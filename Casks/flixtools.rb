cask 'flixtools' do
  version :latest
  sha256 :no_check

  url 'http://www.flixtools.com/download/FlixTools.dmg'
  name 'OpenSubtitles FlixTools Lite'
  homepage 'http://www.flixtools.com/'
  license :gratis

  app 'FlixTools.app'
end
