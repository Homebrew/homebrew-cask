cask :v1 => 'hipsterchat' do
  version '0.2.0'
  sha256 '02fb672f9ab5b9808289461d48f5efb888812931097fbc7bb83dea112f5023ba'

  url "https://github.com/kvasir/hipsterchat/releases/download/v#{version}/HipsterChat-osx-#{version}.zip"
  appcast 'https://github.com/kvasir/hipsterchat/releases.atom'
  name 'HipsterChat'
  homepage 'https://github.com/kvasir/hipsterchat'
  license :mit

  app 'HipsterChat.app'
end
