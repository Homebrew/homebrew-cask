cask 'netron' do
  version '2.0.4'
  sha256 '8b7006eee141ce3b4db6b4a3cc52ad0c46abae5581c183ed7f2a41b42b54f558'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
