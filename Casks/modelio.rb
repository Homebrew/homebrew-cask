cask 'modelio' do
  version '3.4.1,118'
  sha256 'ad31345e88b287cce90b21cf35ca801bc24befcfb4bd2dfc25a3781e4fc415fb'

  url "https://www.modelio.org/modelio-download-archive/doc_download/#{version.after_comma}-modelio-#{version.before_comma.no_dots}-macos-x.html"
  name 'Modelio'
  homepage 'https://www.modelio.org/'

  app "Modelio #{version.major_minor}/modelio.app"

  zap delete: '~/.modelio'
end
