cask 'remember-the-milk' do
  version '1.1.15'
  sha256 'd051a885892d871dc9e6236d523dff2aa5e3732db4bd2cee2b8c100136052677'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
