cask 'netron' do
  version '4.3.3'
  sha256 'df40bcc69eee96c1a160784ebbdbb94067667d9c357c2f3b184a2f50f5227d94'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
