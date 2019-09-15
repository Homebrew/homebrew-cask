cask 'media-converter' do
  version '2.0.6'
  sha256 '5fc837440b9c10ee532917b55078f8b83733540a3293596fe71813f18d78acb8'

  # downloads.sourceforge.net/media-converter was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip"
  appcast 'https://sourceforge.net/projects/media-converter/rss?path=/media-converter'
  name 'Media Converter'
  homepage 'https://media-converter.sourceforge.io/'

  app 'Media Converter.localized/Media Converter.app'
end
