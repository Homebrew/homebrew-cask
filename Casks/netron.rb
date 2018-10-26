cask 'netron' do
  version '2.3.5'
  sha256 '5255c7124252321449164d7be635564d092803c07d76eadde75a141e0b47dadf'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
