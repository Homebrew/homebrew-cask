cask :v1 => 'chitchat' do
  version '1.4'
  sha256 '4c57de82dae89605b46ec361264237567156ca103541fa1f90e22c9f3636027a'

  url "https://github.com/stonesam92/ChitCHat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/stonesam92/ChitChat/releases.atom'
  name 'ChitChat'
  homepage 'https://github.com/stonesam92/ChitChat'
  license :oss

  app 'ChitChat.app'
end
