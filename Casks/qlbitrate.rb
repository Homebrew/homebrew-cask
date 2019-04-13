cask 'qlbitrate' do
  version '1.1'
  sha256 '4b164f258c146248194379d5d559be381b7d5cfc13e395c1e050ceba245ab7bb'

  url 'https://github.com/jordansaints/qlBitRate/releases/download/v1.1/qlBitRate.qlgenerator.1.1.zip'
  appcast 'https://github.com/jordansaints/qlBitRate/releases'
  name 'qlBitRate'
  homepage 'https://github.com/jordansaints/qlBitRate'

  qlplugin 'qlBitRate.qlgenerator'
end
