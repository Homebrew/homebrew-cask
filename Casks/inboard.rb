cask 'inboard' do
  version '1.1-301'
  sha256 '4af1ac9f8a75d7b84035f8afb019708e9a4f75eebec2dfdab1b3708b9881683e'

  url "https://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'https://inboardapp.com/appcast.xml',
          checkpoint: '18b1886512f50af5ada9f70931dbcfdbbd08ef75b2286e62e2c290a358a4d8f6'
  name 'Inboard'
  homepage 'https://inboardapp.com/'

  app 'Inboard.app'
end
