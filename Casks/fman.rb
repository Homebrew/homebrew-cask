cask 'fman' do
  version '1.6.0'
  sha256 '57b06170cc822367fe3984530c8036d31278439d4d397153e6d5e75e96e25977'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
