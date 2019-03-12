cask 'remember-the-milk' do
  version '1.1.10'
  sha256 'a42909a78152c03df9ef209336fb90e9c665bef6189b8ada7cef61bec9b856e6'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
