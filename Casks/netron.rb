cask 'netron' do
  version '2.9.3'
  sha256 '63668663a4dcadb56b29ee95e05ea88c4d8b0e6de9fcd02e39ddb46f91ce822f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
