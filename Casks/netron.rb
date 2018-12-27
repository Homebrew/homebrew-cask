cask 'netron' do
  version '2.7.8'
  sha256 '0e378e3337063c36e8383c2322fdfa8e9e9ffa4352ae553a60aba07498fc4c69'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
