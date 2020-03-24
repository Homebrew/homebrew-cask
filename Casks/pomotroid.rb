cask 'pomotroid' do
  version '0.7.0'
  sha256 'e8a028b61e725f74d63a73474e5390a19560196c1d40ff49667f40a4b691da4b'

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/pomotroid-#{version}-macos.dmg"
  appcast 'https://github.com/Splode/pomotroid/releases.atom'
  name 'Pomotroid'
  homepage 'https://github.com/Splode/pomotroid'

  app 'Pomotroid.app'
end
