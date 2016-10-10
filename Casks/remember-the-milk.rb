cask 'remember-the-milk' do
  version '1.1.0'
  sha256 '37b0af5f3e423d379702ee8a179ef67c83cab825e4a4d9a2d1e7cb83b2250ee7'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com'

  app 'Remember The Milk.app'
end
