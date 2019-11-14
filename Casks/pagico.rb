cask 'pagico' do
  version '9.0.3063'
  sha256 'ef65ac17dc7e420c6fa072d7474cb7e57ade28122359f6b6c9d1bcd5b013a206'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
