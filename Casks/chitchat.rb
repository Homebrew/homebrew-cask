cask :v1 => 'chitchat' do
  version '1.2.0'
  sha256 '0e821745282fac10ea235087ad0e12971a5ffb4a5d879d8e0de9642337df373f'

  url "https://github.com/stonesam92/ChitCHat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/stonesam92/ChitChat/releases.atom'
  name 'ChitChat'
  homepage 'https://github.com/stonesam92/ChitChat'
  license :oss

  app 'ChitChat.app'
end
