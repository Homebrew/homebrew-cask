cask 'prott' do
  version '1.0.4'
  sha256 '85bfe372f750accd70fc26354c17648120b3c663fd4bad47e5e4bdcbd4e03272'

  url 'https://dl.prottapp.com/apps/prott.dmg'
  appcast 'https://dl.prottapp.com/apps/appcast.xml',
          checkpoint: '79a70452a0e815f8652800256c954675280d4d285ec392070daba075635a2364'
  name 'Prott'
  homepage 'https://prottapp.com/'

  app 'Prott.app'
end
