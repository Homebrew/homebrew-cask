cask 'edex-ui' do
  version '2.1.0'
  sha256 '41b737b90cf8fb45f083f506151cdc1ae2bfa224dc37f8ea17e1b11c8780e77a'

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI.MacOS.Image.dmg"
  appcast 'https://github.com/GitSquared/edex-ui/releases.atom'
  name 'eDEX-UI'
  homepage 'https://github.com/GitSquared/edex-ui'

  app 'eDEX-UI.app'
end
