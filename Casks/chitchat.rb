cask 'chitchat' do
  version '1.5'
  sha256 'dbcfe1698d6d4cd9239480f757e821f7a784f7ac89a0bd26b32a0b9014999db0'

  url "https://github.com/stonesam92/ChitChat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/stonesam92/ChitChat/releases.atom',
          checkpoint: '69a46ab6fcee6ee92bee663a47fbfd141845ef87de39a97ee90dee5b98dfc9b2'
  name 'ChitChat'
  homepage 'https://github.com/stonesam92/ChitChat'

  app 'ChitChat.app'
end
