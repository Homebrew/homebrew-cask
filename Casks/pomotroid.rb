cask 'pomotroid' do
  version '0.8.0'
  sha256 '502c177b3d2820001cad64de5dcbf9f7af4cd9206670ee6298abd0820e93c538'

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/pomotroid-#{version}-macos.dmg"
  appcast 'https://github.com/Splode/pomotroid/releases.atom'
  name 'Pomotroid'
  homepage 'https://github.com/Splode/pomotroid'

  app 'Pomotroid.app'
end
