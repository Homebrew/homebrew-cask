cask 'pflists' do
  version '1.0.2'
  sha256 '9fcc95409e095d601f351b46d5a94aeb922fa1fe40c7d663ae6f05640fa4ff6a'

  url "http://www.hanynet.com/pflists-#{version}.zip"
  appcast 'http://www.hanynet.com/pflists/',
          checkpoint: '79d57c8cbfd73895a6a913749b7eb4eb49e15a39734184dc8726e84b8b0c9971'
  name 'PFLists'
  homepage 'http://www.hanynet.com/pflists/'

  app 'PFLists.app'
end
