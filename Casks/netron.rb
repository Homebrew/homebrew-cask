cask 'netron' do
  version '1.9.4'
  sha256 'd940c7096eac795114eb70babe46748e7355c9609bfd36a8bdf708bb6e3717fb'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
