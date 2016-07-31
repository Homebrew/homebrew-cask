cask 'media-converter' do
  version '1.2'
  sha256 '4893e6e5bc18b9cb0f0d8e1bcb861f92595314e4f9768ef638affdfc866f37e1'

  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip"
  appcast 'https://sourceforge.net/projects/media-converter/rss',
          checkpoint: 'c4fddaf54671ebf57b8106052c2d40da12110d0529bf6b5123929c1c5c4c33c9'
  name 'Media Converter'
  homepage 'http://media-converter.sourceforge.net/'
  license :gpl

  app 'Media Converter.localized/Media Converter.app'
end
