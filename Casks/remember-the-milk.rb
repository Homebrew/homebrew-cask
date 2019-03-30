cask 'remember-the-milk' do
  version '1.1.11'
  sha256 'f263e2c74bb10b2dbedc329bfb953f0aa03948f29661715bb56feb3a1150881c'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
