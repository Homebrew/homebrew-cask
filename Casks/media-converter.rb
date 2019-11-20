cask 'media-converter' do
  version '2.0.9'
  sha256 'c796f68cad26f795de4a9202584ce26a5ce1a2884d1c1e6865dd1903353f8612'

  # downloads.sourceforge.net/media-converter was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip"
  appcast 'https://sourceforge.net/projects/media-converter/rss?path=/media-converter'
  name 'Media Converter'
  homepage 'https://media-converter.sourceforge.io/'

  app 'Media Converter.localized/Media Converter.app'
end
