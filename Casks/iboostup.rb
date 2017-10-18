cask 'iboostup' do
  version '5.9.3'
  sha256 'e748361f6cb6b7e372f5bfbdbb2b92a0511edb579eef0e7bff9dee6d1fcc315b'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: 'd9ae453bb0bde58cc42b932d35a2798572c0a3ffbee8554b92af63b9649bbd97'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'

  app 'iBoostUp.app'
end
