cask :v1 => 'chitchat' do
  version '1.1.0'
  sha256 'e31b7df5585da3d52343c22ed3c9905adc6a72d22612d3bdb06e1ee5fcfd3e3a'

  url "https://github.com/stonesam92/ChitCHat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/stonesam92/ChitChat/releases.atom'
  name 'ChitChat'
  homepage 'https://github.com/stonesam92/ChitChat'
  license :oss

  app 'ChitChat.app'
end
