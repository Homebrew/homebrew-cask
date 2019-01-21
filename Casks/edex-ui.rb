cask 'edex-ui' do
  version '2.0.0'
  sha256 '0d8749dc9e6338499cbae087103798b522f236e62da10066d674867093f08499'

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI.MacOS.Image.dmg"
  appcast 'https://github.com/GitSquared/edex-ui/releases.atom'
  name 'eDEX-UI'
  homepage 'https://github.com/GitSquared/edex-ui'

  app 'eDEX-UI.app'
end
