cask 'epubquicklook' do
  version '1.8'
  sha256 '923b2ebcbffc4ee1da42550c2239b41bad088d61956b22b1a92b293329ef6fe5'

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.qlgenerator.zip"
  appcast 'https://github.com/jaketmp/ePub-quicklook/releases.atom',
          checkpoint: '5d6c50f8872783e53e5e4024e900e2ea35c45c84dd0a072c7f8cb8a4d29e0533'
  name 'EPUB QuickLook'
  homepage 'https://github.com/jaketmp/ePub-quicklook'

  qlplugin 'epub.qlgenerator'
end
