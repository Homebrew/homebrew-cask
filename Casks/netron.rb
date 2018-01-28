cask 'netron' do
  version '1.4.0'
  sha256 'd80bf30ef33f1bb7d9a8e827fcd2492585ee7f8aaa0dcc1ef28fc5dbb8676937'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '0b97e8b654134dde74f491b6647678242306a6cea96ec5f7749afb05e7238295'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
