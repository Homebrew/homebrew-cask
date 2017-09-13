cask 'markcat' do
  version '1.0.2'
  sha256 '85503e6c26a079371f49fffb4ef10256b0595a10c7f109af15f6973fa5266932'

  url "https://github.com/ma-tu/markcat/releases/download/v#{version}/MarkCat-darwin-x64.zip"
  appcast 'https://github.com/ma-tu/markcat/releases.atom',
          checkpoint: 'a9066057c723b6de8f09652334c5019318cf37f68d835a51167f0e949b145448'
  name 'MarkCat'
  homepage 'https://github.com/ma-tu/markcat'

  app 'MarkCat-darwin-x64/MarkCat.app'
end
