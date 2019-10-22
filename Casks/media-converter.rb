cask 'media-converter' do
  version '2.0.7'
  sha256 '72b0771c292b3dd55939048e5bdfd37e76c5e6d4b436f69304002a6a1f45bde3'

  # downloads.sourceforge.net/media-converter was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip"
  appcast 'https://sourceforge.net/projects/media-converter/rss?path=/media-converter'
  name 'Media Converter'
  homepage 'https://media-converter.sourceforge.io/'

  app 'Media Converter.localized/Media Converter.app'
end
