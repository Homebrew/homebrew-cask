cask 'aircall' do
  version '1.4.14'
  sha256 '26bb8b2ffa9c8de774d0930184d09f5d82a642ec947ef3fcf3b413e791c9a6a0'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '2a0c102b5cd940cefb1862787afba4f03b3afb5f06567ec7f7c9bbcc343a6fc4'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
