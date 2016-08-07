cask 'remember-the-milk' do
  version '1.0.2'
  sha256 '006d07abf92d919d773e66372946fc26c5c9125594b9c72214788439184f1150'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com'
  license :commercial

  app 'Remember The Milk.app'
end
