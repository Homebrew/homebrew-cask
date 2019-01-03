cask 'edex-ui' do
  version '1.1.2'
  sha256 '3ee567515d87c238f588f5bc204fd64da27f1c2b8100e11b5abfbe280f20a404'

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI.MacOS.Image.dmg"
  appcast 'https://github.com/GitSquared/edex-ui/releases.atom'
  name 'eDEX-UI'
  homepage 'https://github.com/GitSquared/edex-ui'

  app 'eDEX-UI.app'
end
