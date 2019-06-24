cask 'remember-the-milk' do
  version '1.1.13'
  sha256 '1a7e84d1bf77373b2dc5b32abde04bf6f0a079b990a9c12ab3f59fda58fccb12'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
