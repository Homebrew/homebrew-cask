cask 'media-converter' do
  version '1.2'
  sha256 '4893e6e5bc18b9cb0f0d8e1bcb861f92595314e4f9768ef638affdfc866f37e1'

  # downloads.sourceforge.net/media-converter was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip"
  appcast 'https://sourceforge.net/projects/media-converter/rss?path=/media-converter'
  name 'Media Converter'
  homepage 'https://media-converter.sourceforge.io/'

  app 'Media Converter.localized/Media Converter.app'
end
