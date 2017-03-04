cask 'quicknfo' do
  version '1.2'
  sha256 'ee5c03f78ff60e69e776bec39896ac48496915de35fcb3e2bd0d9c20ad92b5bb'

  url "https://github.com/The-Master777/QuickNFO/releases/download/v#{version}/QuickNFO.qlgenerator.zip"
  appcast 'https://github.com/The-Master777/QuickNFO/releases.atom',
          checkpoint: '279e07f68848eed2a04fab4749972b30a7b8b12335b1a4f209650f72c9d59c80'
  name 'QuickNFO'
  homepage 'https://github.com/planbnet/QuickNFO'

  qlplugin 'QuickNFO.qlgenerator'
end
