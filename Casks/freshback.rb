cask 'freshback' do
  version '1.8'
  sha256 '2755dbf5b96211677536b50675d0b47dfa81695783d05150c6856e86fb70e261'

  url "http://arkanath.com/FreshBackMac/FreshBackMac_v#{version.dots_to_underscores}.zip"
  name 'FreshBackMac'
  homepage 'http://arkanath.com/FreshBackMac/'

  app 'FreshBackMac.app'
end
