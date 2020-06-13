cask 'remember-the-milk' do
  version '1.2.1'
  sha256 '80f9d66b19822c619d25d920e1d2415f17d7086a23fa4f4631d5a9de56f8fe29'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
