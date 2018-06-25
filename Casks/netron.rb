cask 'netron' do
  version '1.8.9'
  sha256 '2f3eac1d425fdc67163a626224b4176c3a35808c0d821d4294b07af0e767a613'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
