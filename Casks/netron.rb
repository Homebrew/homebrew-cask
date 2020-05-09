cask 'netron' do
  version '4.1.5'
  sha256 '2d3ac9295d5bb4a9e8dd9533f7272d1a20f01e0e240a6b14dc51ddd8e3828a57'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
