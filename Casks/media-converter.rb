cask 'media-converter' do
  version '1.2'
  sha256 '4893e6e5bc18b9cb0f0d8e1bcb861f92595314e4f9768ef638affdfc866f37e1'

  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip"
  appcast 'https://sourceforge.net/projects/media-converter/rss?path=/media-converter',
          checkpoint: 'fc743fb17b4a67e6b713818dc597975f7f3e31de83fdb57afb8ee6f361d6c0cc'
  name 'Media Converter'
  homepage 'http://media-converter.sourceforge.net/'

  app 'Media Converter.localized/Media Converter.app'
end
