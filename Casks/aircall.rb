cask 'aircall' do
  version '1.4.15'
  sha256 'd4f002008ab38949a9175f14824075a9501a836fd894f6b714ce7beeee51caf4'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
