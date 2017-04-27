cask 'remember-the-milk' do
  version '1.1.8'
  sha256 '2b918c5687e6c0780ec6422dcabbfed3e9462ce342be2f93c28528d03562c1cf'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
