cask 'edex-ui' do
  version '2.2.1'
  sha256 '5ac85a8d3a866520a170842b3baed6673b930101c5acf62f2a173aaa741f4319'

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI.MacOS.Image.dmg"
  appcast 'https://github.com/GitSquared/edex-ui/releases.atom'
  name 'eDEX-UI'
  homepage 'https://github.com/GitSquared/edex-ui'

  app 'eDEX-UI.app'
end
