cask 'pagico' do
  version '9.0.3067'
  sha256 '0be368af8b22bacb55c13f64705f8e37154bc2ae50c9fce2db566ec3663907a8'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
