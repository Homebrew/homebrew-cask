cask 'leech' do
  version '3.1'
  sha256 'e8553da6c6eaca569e87b0188b7c0bb6eab64dbc874c8c151768c6bf96c2470e'

  url 'https://manytricks.com/download/leech'
  appcast 'https://manytricks.com/leech/appcast'
  name 'Leech'
  homepage 'https://manytricks.com/leech/'

  auto_updates true

  app 'Leech.app'
end
