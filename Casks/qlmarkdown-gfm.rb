cask 'qlmarkdown-gfm' do
  version '1.0.0'
  sha256 '86bc13ac3e1aba78b201b233ce014a932f865c51d7f6e47c3d466c1130e6fd4d'

  url "https://github.com/Watson1978/QLMarkdownGFM/releases/download/v#{version}/QLMarkdownGFM.qlgenerator.zip"
  appcast 'https://github.com/Watson1978/QLMarkdownGFM/releases.atom',
          checkpoint: '204c4529f1028cfa06d292641c30b76cb5cb8e9102028d9ced7084db18247a03'
  name 'QLMarkdownGFM'
  homepage 'https://github.com/Watson1978/QLMarkdownGFM'

  qlplugin 'QLMarkdownGFM.qlgenerator'
end
