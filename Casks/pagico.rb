cask 'pagico' do
  version '8.18.2426'
  sha256 '74fa60570ce79169c11c6deef2e463960094fe33166a9bf2439f342cc4e849a4'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
