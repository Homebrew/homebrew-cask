cask 'netron' do
  version '1.9.6'
  sha256 '4f49c67d6ab2c70efdc022bce2e49a521c8f8b2200cf2a9179479d8214eede08'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
