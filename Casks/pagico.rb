cask 'pagico' do
  version '9.2.20200424'
  sha256 'c95838d0932f94c0e5fd4c84fc3a0cfc308265c09535061129ec093b64780cc1'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
