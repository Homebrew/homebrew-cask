cask 'remember-the-milk' do
  version '1.1.19'
  sha256 'd7159d21d4975501551a5fa740e895bb7299820ab3ded07e11909aebb568ac60'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
