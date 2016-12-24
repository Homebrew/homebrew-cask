cask 'neo11-chitchat' do
  version '2.5.2'
  sha256 '803f91fe294d232af74fbe37abe4acaea068427c5b10cdc9a774fe0be49c7809'

  url "https://github.com/Neo11/ChitChat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/Neo11/ChitChat/releases.atom',
          checkpoint: '3611f0ed560142a9cb0db52ec1cb8c68ff203686140dbe3ca17efbaa625e3326'
  name 'ChitChat'
  homepage 'https://github.com/Neo11/ChitChat'

  app 'ChitChat.app'
end
