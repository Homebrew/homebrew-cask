cask 'doxygen' do
  version '1.8.13'
  sha256 '3fa2327580ddbfdbcfd2925c63a1b1e4ae05227b2771542a555d546da64ea517'

  url "https://ftp.stack.nl/pub/users/dimitri/Doxygen-#{version}.dmg"
  appcast 'https://www.stack.nl/~dimitri/doxygen/manual/changelog.html',
          checkpoint: '76768ca4023acd09ee3509c46cb9091f721bbdcbee3ab86816eab1ea8f5fe5ee'
  name 'Doxygen'
  homepage 'https://www.stack.nl/~dimitri/doxygen/'

  app 'Doxygen.app'
end
