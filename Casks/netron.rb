cask 'netron' do
  version '2.6.0'
  sha256 '0932560c10b61afb4230286138d56c89f367f340371862d1c40ac769de94e28f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
