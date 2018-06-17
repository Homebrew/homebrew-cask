cask 'netron' do
  version '1.8.7'
  sha256 'c196ca3bcc4835556554736f63dd921b82fcd2ff2577982ae31a169b761fbab9'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
