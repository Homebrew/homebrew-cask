cask 'quicknfo' do
  version '1.2'
  sha256 'ee5c03f78ff60e69e776bec39896ac48496915de35fcb3e2bd0d9c20ad92b5bb'

  url "https://github.com/The-Master777/QuickNFO/releases/download/v#{version}/QuickNFO.qlgenerator.zip"
  appcast 'https://github.com/The-Master777/QuickNFO/releases.atom',
          checkpoint: 'eff62dc123d295b082ccc021396660db1b13fb2e10bbc66be16784e5f1d7f0c2'
  name 'QuickNFO'
  homepage 'https://github.com/planbnet/QuickNFO'

  qlplugin 'QuickNFO.qlgenerator'
end
