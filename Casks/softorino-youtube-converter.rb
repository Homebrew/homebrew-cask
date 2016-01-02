cask 'softorino-youtube-converter' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.softorino.converter/SoftorinoConverter.dmg'
  name 'Softorino YouTube Converter'
  homepage 'http://softorino.com/youtube-converter'
  license :gratis

  app 'Softorino YouTube Converter.app'
end
