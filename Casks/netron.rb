cask 'netron' do
  version '3.0.6'
  sha256 '0144d681b443bdd1b3ff947d42af35d2b2ae908fb3181c4351f3ba70d82db4f2'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
