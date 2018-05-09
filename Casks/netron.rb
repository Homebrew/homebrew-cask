cask 'netron' do
  version '1.7.7'
  sha256 '98bcd89f4b3a6e6bfa3997516b74152c15afe93d799bdae1e6de12e8ee7622d1'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '1d8e10dc3429c133d186755f6e9fcd15385417ba962d2fddd795761552baf4dc'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
