cask 'remember-the-milk' do
  version '1.1.22'
  sha256 '4646be465ed1be07254806f7c74f98e708adcfbb9441208d0183f4a17946dbe4'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
