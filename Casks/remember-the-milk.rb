cask 'remember-the-milk' do
  version '1.1.21'
  sha256 'da8b71984866c4b0fafd8baa93a237c34d10bb24bf64a13c8fb4bc82f6a4a1b8'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
