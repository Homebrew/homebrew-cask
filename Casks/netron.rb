cask 'netron' do
  version '2.5.1'
  sha256 '739325cde1728bf9243bb0b7e3f6d4098b858e8321df4ce9dcdc803284713444'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
