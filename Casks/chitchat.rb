cask 'chitchat' do
  version '1.5'
  sha256 'dbcfe1698d6d4cd9239480f757e821f7a784f7ac89a0bd26b32a0b9014999db0'

  url "https://github.com/stonesam92/ChitChat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/stonesam92/ChitChat/releases.atom'
  name 'ChitChat'
  homepage 'https://github.com/stonesam92/ChitChat'

  app 'ChitChat.app'
end
