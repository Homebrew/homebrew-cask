cask 'palemoon' do
  version '27.9.0'
  sha256 '1982b506d012db957e4bf017dcb2b7aaed65bb72d8e8a12fcc5f304f1231395e'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Palemoon'
  homepage 'https://www.palemoon.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'NewMoon.app', target: 'Palemoon.app'
end
