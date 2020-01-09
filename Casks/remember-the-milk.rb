cask 'remember-the-milk' do
  version '1.1.16'
  sha256 '31d5aa5d9f2720d1cecde76416c6c61ff6076804498e74d013785d3d8bfb702b'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
