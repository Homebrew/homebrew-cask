cask 'netron' do
  version '4.3.9'
  sha256 'ce632b5e7a1a6be8a8fea90ba5de8bcbf75c77476c9cfaeb3ead3e395df44007'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
