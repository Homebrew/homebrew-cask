cask 'mountain' do
  version '1.6.4'
  sha256 '7290dca93600e5c59cf797cae3f3bd874f2d9d79811969b9dad8586cf2a5c53f'

  url 'https://appgineers.de/mountain/files/Mountain.zip'
  appcast 'https://appgineers.de/mountain/files/mountaincast.xml',
          checkpoint: '324c8292e7c397d2a689b0237235aca0f0b0e19f9d46d6440b76695803c45c7f'
  name 'Mountain'
  homepage 'https://appgineers.de/mountain/'

  app 'Mountain.app'
end
