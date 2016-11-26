cask 'aircall' do
  version '1.1.2'
  sha256 '7c0afc31019dfaa6867bc47cdc8b84033b0d98a00eadefb19a78868d23e7c5dc'

  url "http://electron.aircall.io/download/#{version}/osx"
  appcast 'http://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '25272934fa93d25ef834f9b4df1480ef14f33117adb2a2d86f53a0634e42f5cf'
  name 'Aircall'
  homepage 'https://aircall.io'

  auto_updates true

  app 'Aircall.app'
end
