cask 'studio-3t' do
  version '2018.2.4'
  sha256 'f5ee571326f821b69e917fc17ca7050c8c164966433d55cf67f053067f4fce66'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '8c54aedcbf73463bf7b930c1f9a6584e40715faf81e1274de1e2b8243a60568f'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
