cask 'remember-the-milk' do
  version '1.1.14'
  sha256 '27bcdf2a450814e0957db42d8d4af5b0102cd559e17307c6809a3f7792e1e43c'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
