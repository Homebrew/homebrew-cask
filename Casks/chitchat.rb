cask :v1 => 'chitchat' do
  version '1.3'
  sha256 '0851d0ed5e7b45f80d24c1d253eefd39f384624bd75d948dbb01a2994e47464c'

  url "https://github.com/stonesam92/ChitCHat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/stonesam92/ChitChat/releases.atom'
  name 'ChitChat'
  homepage 'https://github.com/stonesam92/ChitChat'
  license :oss

  app 'ChitChat.app'
end
