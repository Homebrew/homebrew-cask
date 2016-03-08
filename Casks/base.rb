cask 'base' do
  version '2.4.10'
  sha256 '1a23a8da1be9e9a681d57bb934ac1f2dc8ab569027ec357dbf9324d48fe4fded'

  url "http://files.menial.co.uk/base/base_#{version}.zip"
  appcast 'http://update.menial.co.uk/software/base/',
          checkpoint: '02f44fba8418545d1abdbcae6dd50fc20d8740eaac1f4b18a4d0aef23e5291ce'
  name 'Menial Base'
  homepage 'http://menial.co.uk/base/'
  license :commercial

  app 'Base.app'
end
