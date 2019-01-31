cask 'freshback' do
  version '1.8'
  sha256 '2755dbf5b96211677536b50675d0b47dfa81695783d05150c6856e86fb70e261'

  url "https://arkanath.com/FreshBackMac/FreshBackMac_v#{version.dots_to_underscores}.zip"
  appcast 'https://arkanath.com/FreshBackMac/changelog.html'
  name 'FreshBackMac'
  homepage 'https://arkanath.com/FreshBackMac/'

  app 'FreshBackMac.app'
end
