cask 'pagico' do
  version '9.4.20200613'
  sha256 '90481aa4e39c7cc6420fdd49659d3761476c5165fd27653dd42d626213956f0e'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
