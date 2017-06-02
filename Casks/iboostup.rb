cask 'iboostup' do
  version '5.8.0'
  sha256 '5339ea61c113e4ed60d73a154755ed25ea9950f0e72a99cca952788cb69f75df'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: 'd37b22fcbf272751e0ec67f3b36d3909f5bfbf8d422e49353dac030e1fe5e6eb'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'

  app 'iBoostUp.app'
end
