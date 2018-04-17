cask 'softorino-youtube-converter' do
  version :latest
  sha256 :no_check

  # devmate.com/com.softorino.syc2 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.softorino.syc2/SYC2.dmg'
  name 'Softorino YouTube Converter 2'
  homepage 'https://softorino.com/youtube-converter-2/'

  app 'Softorino YouTube Converter 2.app'
end
