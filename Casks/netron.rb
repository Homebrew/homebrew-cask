cask 'netron' do
  version '2.9.5'
  sha256 '45cb49d1d1c7917b2824ea66b8ab46dc17f4d1b15ebada615a26bca1b39843bc'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
