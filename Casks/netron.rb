cask 'netron' do
  version '2.6.4'
  sha256 '5593faa0f5ef6b9d4463b6f78fd3f4f733b7ac7ba0368d6b1570c1ece45918b5'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
