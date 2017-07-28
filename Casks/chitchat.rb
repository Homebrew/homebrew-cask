cask 'chitchat' do
  version '1.5'
  sha256 'dbcfe1698d6d4cd9239480f757e821f7a784f7ac89a0bd26b32a0b9014999db0'

  url "https://github.com/stonesam92/ChitChat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/stonesam92/ChitChat/releases.atom',
          checkpoint: 'dbf95f4eac9084b8b95eb773f93bd8906de08451c32891ddcfdc23edfd3f283c'
  name 'ChitChat'
  homepage 'https://github.com/stonesam92/ChitChat'

  app 'ChitChat.app'
end
