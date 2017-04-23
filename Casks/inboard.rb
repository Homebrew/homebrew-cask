cask 'inboard' do
  version '1.1-301'
  sha256 '4af1ac9f8a75d7b84035f8afb019708e9a4f75eebec2dfdab1b3708b9881683e'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'http://inboardapp.com/appcast.xml',
          checkpoint: '242346a9670b857528168363540dba4e60651c88b88298520c8e0b3e9abd2cef'
  name 'Inboard'
  homepage 'https://inboardapp.com/'

  app 'Inboard.app'
end
