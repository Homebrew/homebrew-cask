cask 'softorino-youtube-converter' do
  version :latest
  sha256 :no_check

  # devmate.com/com.softorino.converter was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.softorino.converter/SoftorinoConverter.dmg'
  name 'Softorino YouTube Converter'
  homepage 'https://softorino.com/youtube-converter'

  app 'Softorino YouTube Converter.app'
end
