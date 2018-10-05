cask 'leech' do
  version '3.1.2'
  sha256 '8b8c6bf84ced03e5b0b00229898c64befc3cb6e4be25d9f88356a78bb3e97c73'

  url 'https://manytricks.com/download/leech'
  appcast 'https://manytricks.com/leech/appcast'
  name 'Leech'
  homepage 'https://manytricks.com/leech/'

  auto_updates true

  app 'Leech.app'
end
