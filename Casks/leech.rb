cask 'leech' do
  version '3.0'
  sha256 'd19b25a52180a62d4f50d6fddab15b4ac8dba565ad2a685b03e8aacaf6416e12'

  url 'http://manytricks.com/download/leech'
  appcast 'https://manytricks.com/leech/appcast.xml',
          checkpoint: 'ca5e473eb98ee7850dc118636de64c9946a0373236fe78e7433d3aef0b0ae77d'
  name 'Leech'
  homepage 'https://manytricks.com/leech/'
  license :commercial

  auto_updates true

  app 'Leech.app'
end
