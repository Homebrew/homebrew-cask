cask 'media-converter' do
  version '1.2'
  sha256 '4893e6e5bc18b9cb0f0d8e1bcb861f92595314e4f9768ef638affdfc866f37e1'

  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip"
  appcast 'https://sourceforge.net/projects/media-converter/rss?path=/media-converter',
          checkpoint: '5208b7eac085a4a148c09386e67c210b45c637779a79c134ca1fc70a95fa8024'
  name 'Media Converter'
  homepage 'http://media-converter.sourceforge.net/'

  app 'Media Converter.localized/Media Converter.app'
end
