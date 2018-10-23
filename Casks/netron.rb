cask 'netron' do
  version '2.3.2'
  sha256 'fe4bbb11df13af7b3342132712c76cc2f0b427aa1eecd8f3e890219a0ed8b066'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
