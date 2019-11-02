cask 'netron' do
  version '3.4.9'
  sha256 '43173e4a513697bf793829c0fe26a12be31a5b3679516b346ad95748c7785115'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
