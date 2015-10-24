cask :v1 => 'epubquicklook' do
  version '1.7'
  sha256 '9d1816628d9718de0b6bfc97c30a4f0569561b4102f46c9e2e890502e9047456'

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.qlgenerator.zip"
  appcast 'https://github.com/jaketmp/ePub-quicklook/releases.atom'
  name 'EPUB QuickLook'
  homepage 'https://github.com/jaketmp/ePub-quicklook'
  license :bsd

  qlplugin 'epub.qlgenerator'
end
