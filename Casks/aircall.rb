cask 'aircall' do
  version '1.2.1'
  sha256 'df416f8df0910d5d368b9de7cce05e3b78505b734f79eb489c7e58f6cfd0bc2d'

  url "http://electron.aircall.io/download/#{version}/osx"
  appcast 'http://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '925c9a8016d511c4e1290ab280143152f5d7871c3b1332a8cd5539eaca4541ec'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
