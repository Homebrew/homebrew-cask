cask 'pomotroid' do
  version '0.9.0'
  sha256 'a27a1c5f853f9e8bebbdb62ef539f3360ee68b057f9c6a43eb4e3e75edfee12e'

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/pomotroid-#{version}-macos.dmg"
  appcast 'https://github.com/Splode/pomotroid/releases.atom'
  name 'Pomotroid'
  homepage 'https://github.com/Splode/pomotroid'

  app 'Pomotroid.app'
end
