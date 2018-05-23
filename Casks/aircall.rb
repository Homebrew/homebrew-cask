cask 'aircall' do
  version '1.4.15'
  sha256 'd4f002008ab38949a9175f14824075a9501a836fd894f6b714ce7beeee51caf4'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '64eb5f2f74f986cdd50711c70cce5086bae081ddcf5ae7231ff73554c6dc5e88'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
