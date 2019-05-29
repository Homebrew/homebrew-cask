cask 'remember-the-milk' do
  version '1.1.12'
  sha256 '984a6765c6ec7352fd8018c1bc01b148c5d033fbe7e46fba22daf26a8d1fc668'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
