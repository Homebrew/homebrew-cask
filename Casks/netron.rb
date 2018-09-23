cask 'netron' do
  version '2.1.5'
  sha256 '84987b820523071b1d57e16e4c2789e8b114c14ecbfa0027d04f4ad5634d5839'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
