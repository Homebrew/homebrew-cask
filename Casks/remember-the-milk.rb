cask 'remember-the-milk' do
  version '1.1.18'
  sha256 '971d2afc5b31a4b47e9319705b5db61fcc52a934117d5318136a2cc68a1e46fa'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
