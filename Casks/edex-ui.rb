cask 'edex-ui' do
  version '2.0.1'
  sha256 'ee4819d7543a2bc1ba60aa8b1252e3a6f0fae2a08580b4cb596c31ca008783c3'

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI.MacOS.Image.dmg"
  appcast 'https://github.com/GitSquared/edex-ui/releases.atom'
  name 'eDEX-UI'
  homepage 'https://github.com/GitSquared/edex-ui'

  app 'eDEX-UI.app'
end
