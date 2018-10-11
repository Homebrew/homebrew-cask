cask 'cuppa' do
  version '1.8.1'
  sha256 '1355d94fb6648b056011beb120f6cd72803e0530c9286efbd46883eaa357253d'

  url "https://www.nathanatos.com/software/downloads/Cuppa-#{version}.zip"
  appcast 'https://www.nathanatos.com/software/cuppa.xml'
  name 'Cuppa'
  homepage 'https://www.nathanatos.com/software/'

  app 'Cuppa.app'
end
