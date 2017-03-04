cask 'leech' do
  version '3.1'
  sha256 'e8553da6c6eaca569e87b0188b7c0bb6eab64dbc874c8c151768c6bf96c2470e'

  url 'https://manytricks.com/download/leech'
  appcast 'https://manytricks.com/leech/appcast.xml',
          checkpoint: 'b0bc47dfb3d94fa3a2b7b4dad2538b2026803578283b3c106d48692b18d47c99'
  name 'Leech'
  homepage 'https://manytricks.com/leech/'

  auto_updates true

  app 'Leech.app'
end
