cask 'netron' do
  version '2.8.0'
  sha256 '19c80beb4ff0434c06310f6699ce2a4d15783d6cb0dcd27df3a9a259daa04b8a'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
