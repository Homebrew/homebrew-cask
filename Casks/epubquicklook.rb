cask :v1 => 'epubquicklook' do
  version '1.7'
  sha256 '2508a882ad53fa2fc1b9e42e9548c8ef9fe62f1c57788a874e6c098a1704b96e'

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.qlgenerator.zip"
  appcast 'https://github.com/jaketmp/ePub-quicklook/releases.atom'
  name 'EPUB QuickLook'
  homepage 'https://github.com/jaketmp/ePub-quicklook'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  qlplugin 'epub.qlgenerator'
end
