cask 'netron' do
  version '2.4.6'
  sha256 'ff41517dbb79eae924a66e71f4da52bc1058ce0c749200ef02dc9fcb99d6eb39'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
