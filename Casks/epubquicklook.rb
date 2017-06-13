cask 'epubquicklook' do
  version '1.8'
  sha256 '923b2ebcbffc4ee1da42550c2239b41bad088d61956b22b1a92b293329ef6fe5'

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.qlgenerator.zip"
  appcast 'https://github.com/jaketmp/ePub-quicklook/releases.atom',
          checkpoint: '839bfc0ae9a0a435d2f1fbab192eccb05cfaa75e57be7df0eefe9af9c1ffd20d'
  name 'EPUB QuickLook'
  homepage 'https://github.com/jaketmp/ePub-quicklook'

  qlplugin 'epub.qlgenerator'
end
