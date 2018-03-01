cask 'remember-the-milk' do
  version '1.1.9'
  sha256 '10019b2fc1d4c6d98d4518ec7af89b533c3db2c3aa8c9081ba20a5a15cfac818'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
