cask 'netron' do
  version '3.9.8'
  sha256 '5b167eb87ef69272d852e71e941cf3435597173449a688cd927871faf0cb380b'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
