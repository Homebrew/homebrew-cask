cask 'media-converter' do
  version '2.0.5'
  sha256 '3e8ee5f2df050788e909d02ad0292a6f221486d86846b007cf5d24a9d4b2e7e2'

  # downloads.sourceforge.net/media-converter was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip"
  appcast 'https://sourceforge.net/projects/media-converter/rss?path=/media-converter'
  name 'Media Converter'
  homepage 'https://media-converter.sourceforge.io/'

  app 'Media Converter.localized/Media Converter.app'
end
