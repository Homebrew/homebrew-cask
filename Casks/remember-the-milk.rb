cask 'remember-the-milk' do
  version '1.2.2'
  sha256 '056b74352c82306572275801f527d062edf04d50ffc7337d65c30543920da333'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
