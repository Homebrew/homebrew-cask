cask 'netron' do
  version '2.2.0'
  sha256 '66a5fe13a8575be9bf5cb3fb82f9a2eab59c02015b8fae28b88b0614c746aeb4'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
