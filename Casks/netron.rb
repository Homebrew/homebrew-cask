cask 'netron' do
  version '2.9.7'
  sha256 'de640292a0a80595fe3de5a70cf077d885a745c6ad3e23dcf62d8433ace199bc'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
