cask 'netron' do
  version '2.7.3'
  sha256 'e0b373e63867da318be0a291b07f801cc12787b397e3bbcdf6f6317f0dba0a2e'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
