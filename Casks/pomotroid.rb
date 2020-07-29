cask 'pomotroid' do
  version '0.11.0'
  sha256 '2d4c77f70b402cd9b25f257e64dcd876d87dfde71a048efb5b1392f234fbdb88'

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/pomotroid-#{version}-macos.dmg"
  appcast 'https://github.com/Splode/pomotroid/releases.atom'
  name 'Pomotroid'
  homepage 'https://github.com/Splode/pomotroid'

  app 'Pomotroid.app'
end
