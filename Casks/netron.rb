cask 'netron' do
  version '2.1.1'
  sha256 'f7e8b0d69867ac93e61bec2e1a50a7581136f000f9ac0b4575c7f8562736fc70'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
