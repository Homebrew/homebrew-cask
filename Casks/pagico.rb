cask 'pagico' do
  version '8.17.2382'
  sha256 '2902e07bf12da5d4b48cceaa8a2992aa3a8364e19499d4a09a9124cf2cb92566'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast 'https://www.pagico.com/api/pagico8.mac.xml'
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
