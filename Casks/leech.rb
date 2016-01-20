cask 'leech' do
  version '2.2.2'
  sha256 '5759223aa3ece0ed844975a470fa347a1e231471912a48d6c826070595074a08'

  url 'http://manytricks.com/download/leech'
  appcast 'https://manytricks.com/leech/appcast.xml',
          checkpoint: 'ef4c85840f37dc92c0999f88e5e64acc5eb76b3e3933582710cdb703583473a1'
  name 'Leech'
  homepage 'https://manytricks.com/leech/'
  license :commercial

  app 'Leech.app'
end
