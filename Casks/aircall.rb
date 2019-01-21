cask 'aircall' do
  version '1.7.1'
  sha256 'fdca1a399240300d14d5348c422990dc8f77579015384567f4620da2747355c9'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
