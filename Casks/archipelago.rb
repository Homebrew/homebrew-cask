cask 'archipelago' do
  version '3.9.0'
  sha256 '741d240d486cf4cc42d145b3c18e62358adc054f73a7445f4524dfc7f988a5e4'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
