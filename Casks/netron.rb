cask 'netron' do
  version '2.7.4'
  sha256 '5dcbf4115784e0105aa770bea67871fe5b96d9a3a9932ca5b60cd1a0b5ea9488'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
