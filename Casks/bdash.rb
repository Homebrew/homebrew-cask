cask 'bdash' do
  version '1.2.1'
  sha256 'c28cd5cc9c6c2a1d14552a1b14d07dceb5ada0769ea08d9ae85876d7dd72824c'

  url "https://github.com/bdash-app/bdash/releases/download/#{version}/Bdash-#{version}-macOS.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom',
          checkpoint: '4e2beb620d57e15a407972b02d15a339cdbc3a9243edf717a55f0a25fd62af62'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
