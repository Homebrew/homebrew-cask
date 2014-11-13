cask :v1 => 'media-converter' do
  version '1.2'
  sha256 '4893e6e5bc18b9cb0f0d8e1bcb861f92595314e4f9768ef638affdfc866f37e1'

  url "https://downloads.sourceforge.net/project/media-converter/media-converter/#{version}/media-converter-#{version}.zip"
  homepage 'http://media-converter.sourceforge.net/'
  license :oss

  app 'Media Converter.localized/Media Converter.app'
end
