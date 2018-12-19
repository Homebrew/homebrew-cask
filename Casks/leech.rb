cask 'leech' do
  version '3.1.3'
  sha256 '3984f812b481714419804e44d3940742780188420f4d396bdc5333e8b120e06c'

  url 'https://manytricks.com/download/leech'
  appcast 'https://manytricks.com/leech/appcast'
  name 'Leech'
  homepage 'https://manytricks.com/leech/'

  auto_updates true

  app 'Leech.app'
end
