cask 'epubquicklook' do
  version '1.8'
  sha256 '923b2ebcbffc4ee1da42550c2239b41bad088d61956b22b1a92b293329ef6fe5'

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.qlgenerator.zip"
  appcast 'https://github.com/jaketmp/ePub-quicklook/releases.atom',
          checkpoint: '4ce0d3ba1834210a5eabc0b3fc1424c0f8b7a304f8db73beb6c2ffd11fe78756'
  name 'EPUB QuickLook'
  homepage 'https://github.com/jaketmp/ePub-quicklook'

  qlplugin 'epub.qlgenerator'
end
